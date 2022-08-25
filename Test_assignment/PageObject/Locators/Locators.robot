***Settings***
Resource    ../Locators/Locators.robot
#62fe11e1745ae4313c883e2d
***Variables***

${1}=    Set Variable    %{APIKEY}
${2}=    Set Variable    %{APITOKEN}

${HOST}        https://api.trello.com/1/cards/

${HEADERS}=    Create Dictionary    Accept=application/json    charset=utf-8

${GET}        ?key=3811a2a5a39fe31676e2c56e24fa7cb7&token=b850222ef62af0713952a88ae9bec671b8b8b3d74dac3e22ed765d9d51083841

${POST}        ?idList=62fe11e1745ae4313c883dcc&key=3811a2a5a39fe31676e2c56e24fa7cb7&token=b850222ef62af0713952a88ae9bec671b8b8b3d74dac3e22ed765d9d51083841

${PUT}         ?name=Korttinimi&key=3811a2a5a39fe31676e2c56e24fa7cb7&token=b850222ef62af0713952a88ae9bec671b8b8b3d74dac3e22ed765d9d51083841

${DELETE}      ?key=3811a2a5a39fe31676e2c56e24fa7cb7&token=b850222ef62af0713952a88ae9bec671b8b8b3d74dac3e22ed765d9d51083841

${GET_FAULT}    123?key=3811a2a5a39fe31676e2c56e24fa7cb7&token=b850222ef62af0713952a88ae9bec671b8b8b3d74dac3e22ed765d9d51083841
${GETERROR}    HTTPError: 400 Client Error: Bad Request for url: https://api.trello.com/1/cards/123?key=3811a2a5a39fe31676e2c56e24fa7cb7&token=b850222ef62af0713952a88ae9bec671b8b8b3d74dac3e22ed765d9d51083841&Accept=application%2Fjson&charset=utf-8

${POST_FAULT}    ?idList=&key=3811a2a5a39fe31676e2c56e24fa7cb7&token=b850222ef62af0713952a88ae9bec671b8b8b3d74dac3e22ed765d9d51083841
${POSTERROR}    HTTPError: 400 Client Error: Bad Request for url: https://api.trello.com/1/cards/?idList=&key=3811a2a5a39fe31676e2c56e24fa7cb7&token=b850222ef62af0713952a88ae9bec671b8b8b3d74dac3e22ed765d9d51083841

${PUT_FAULT}    ERROR?name=Korttinimi&key=3811a2a5a39fe31676e2c56e24fa7cb7&token=b850222ef62af0713952a88ae9bec671b8b8b3d74dac3e22ed765d9d51083841
${PUTERROR}    HTTPError: 400 Client Error: Bad Request for url: https://api.trello.com/1/cards/ERROR?name=Korttinimi&key=3811a2a5a39fe31676e2c56e24fa7cb7&token=b850222ef62af0713952a88ae9bec671b8b8b3d74dac3e22ed765d9d51083841

${DELETE_FAULT}    ?key=3811a2a5a39fe31676e2c56e24fa7cb7&token=b850222ef62af0713952a88ae9bec671b8b8b3d74dac3e22ed765d9d51083841
${DELETEERROR}    HTTPError: 404 Client Error: Not Found for url: https://api.trello.com/1/cards/?key=3811a2a5a39fe31676e2c56e24fa7cb7&token=b850222ef62af0713952a88ae9bec671b8b8b3d74dac3e22ed765d9d51083841