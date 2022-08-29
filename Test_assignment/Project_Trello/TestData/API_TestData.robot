***Settings***
Library    OperatingSystem
***Variables***

#${env_var}=    Get Environment Variable    %{APIKEY}
#${Token_Value}    Get Environment Variable    %{APITOKEN}
#${GET}        ?key=${Key_Value}&token=${Token_Value}



${HOST}        https://api.trello.com/1/cards/

${HEADERS}=    Create Dictionary    Accept=application/json    charset=utf-8

${EXPECTED_RESPONSE_CODE}    200

${GET_DELETE}        ?key=#&token=#

${POST}        ?idList=62fe11e1745ae4313c883dcc&key=#&token=#

${PUT}         ?name=Korttinimi&key=#&token=#

${GET_FAULT}    123?key=#&token=#
${GETERROR}    HTTPError: 400 Client Error: Bad Request for url: https://api.trello.com/1/cards/123?key=#&token=#&Create%20Dictionary%20Accept=application/json%20charset=utf-8

${POST_FAULT}    ?idList=&key=#&token=#
${POSTERROR}    HTTPError: 400 Client Error: Bad Request for url: https://api.trello.com/1/cards/?idList=&key=#&token=#

${PUT_FAULT}    ERROR?name=Korttinimi&key=#&token=#
${PUTERROR}    HTTPError: 400 Client Error: Bad Request for url: https://api.trello.com/1/cards/ERROR?name=Korttinimi&key=#&token=#

${DELETE_FAULT}    ?key=#&token=#
${DELETEERROR}    HTTPError: 404 Client Error: Not Found for url: https://api.trello.com/1/cards/?key=#&token=#