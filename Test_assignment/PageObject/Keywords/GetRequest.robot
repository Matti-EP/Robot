***Settings***
Library    SeleniumLibrary
Library    RequestsLibrary
Resource    ../Locators/Locators.robot

    #Run Keyword And Expect Error    ${THEERROR}    Get On Session    my_session    ${GET}    headers=${headers}
    #${JSON_RESPONSE}=    Set Variable    ${response.json()}
    #Log To Console    ${JSON_RESPONSE['id']}
    #Log To Console    ${response.status_code}
    #${HEADERS}=    Create Dictionary    Accept=application/json    charset=utf-8

***Keywords***
#POSITIVE
Connect to GET API
    Create Session    my_session    ${HOST}
    #GET REQUEST
    ${response}=    Get On Session    my_session    ${CARD_ID}${GET}    ${HEADERS}
    Should Be True    ${response.status_code} == 200

Connect to POST API
    Create Session    my_session    ${HOST}
    #POST REQUEST
    ${response}=    POST On Session    my_session    ${POST}    ${HEADERS}
    Should Be True    ${response.status_code} == 200
    ${JSON_RESPONSE}=    Set Variable    ${response.json()}
    ${CARD_ID}=    Set Variable    ${JSON_RESPONSE['id']}
    Set Global Variable    ${CARD_ID}

Connect to PUT API
    Create Session    my_session    ${HOST}
    #PUT REQUEST
    ${response}=    PUT On Session    my_session    ${CARD_ID}${PUT}    ${HEADERS}
    Should Be True    ${response.status_code} == 200

Connect to DELETE API
    Create Session    my_session    ${HOST}
    #DELETE REQUEST
    ${response}=    DELETE On Session    my_session    ${CARD_ID}${DELETE}
    Should Be True    ${response.status_code} == 200

#NEGATIVE
Unsuccessful GET API
    Create Session    my_session    ${HOST}
    #GET REQUEST
    ${HEADERS}=    Create Dictionary    Accept=application/json    charset=utf-8
    Run Keyword And Expect Error    ${GETERROR}    Get On Session    my_session    ${GET_FAULT}    ${HEADERS}

Unsuccessful POST API
    Create Session    my_session    ${HOST}
    #POST REQUEST
    ${HEADERS}=    Create Dictionary    Accept=application/json    charset=utf-8
    Run Keyword And Expect Error    ${POSTERROR}    POST On Session    my_session    ${POST_FAULT}    ${HEADERS}

Unsuccessful PUT API
    Create Session    my_session    ${HOST}
    #PUT REQUEST
    ${HEADERS}=    Create Dictionary    Accept=application/json    charset=utf-8
    Run Keyword And Expect Error    ${PUTERROR}    PUT On Session    my_session    ${PUT_FAULT}    ${HEADERS}

Unsuccessful DELETE API
    Create Session    my_session    ${HOST}
    #DELETE REQUEST
    ${HEADERS}=    Create Dictionary    Accept=application/json    charset=utf-8
    Run Keyword And Expect Error    ${DELETEERROR}    DELETE On Session    my_session    ${DELETE_FAULT}