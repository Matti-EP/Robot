***Settings***
Library    SeleniumLibrary
Library    RequestsLibrary
#Library    OperatingSystem
Resource    ../TestData/API_TestData.robot

***Variables***

#${env_var}=    Get Environment Variable    %{APIKEY}

***Keywords***
#POSITIVE
Connect to GET API
    Create Session    my_session    ${HOST}
    ${response}=    Get On Session    my_session    ${CARD_ID}${GET_DELETE}    ${HEADERS}
    Should Be True    ${response.status_code} == ${EXPECTED_RESPONSE_CODE}

Connect to POST API
    Create Session    my_session    ${HOST}
    ${response}=    POST On Session    my_session    ${POST}    ${HEADERS}
    Should Be True    ${response.status_code} == ${EXPECTED_RESPONSE_CODE}
    ${JSON_RESPONSE}=    Set Variable    ${response.json()}
    ${CARD_ID}=    Set Variable    ${JSON_RESPONSE['id']}
    Set Global Variable    ${CARD_ID}

Connect to PUT API
    Create Session    my_session    ${HOST}
    ${response}=    PUT On Session    my_session    ${CARD_ID}${PUT}    ${HEADERS}
    Should Be True    ${response.status_code} == ${EXPECTED_RESPONSE_CODE}

Connect to DELETE API
    Create Session    my_session    ${HOST}
    ${response}=    DELETE On Session    my_session    ${CARD_ID}${GET_DELETE}
    Should Be True    ${response.status_code} == ${EXPECTED_RESPONSE_CODE}

#NEGATIVE
Unsuccessful GET API
    Create Session    my_session    ${HOST}
    Run Keyword And Expect Error    ${GETERROR}    Get On Session    my_session    ${GET_FAULT}    ${HEADERS}

Unsuccessful POST API
    Create Session    my_session    ${HOST}
    Run Keyword And Expect Error    ${POSTERROR}    POST On Session    my_session    ${POST_FAULT}    ${HEADERS}

Unsuccessful PUT API
    Create Session    my_session    ${HOST}
    Run Keyword And Expect Error    ${PUTERROR}    PUT On Session    my_session    ${PUT_FAULT}    ${HEADERS}

Unsuccessful DELETE API
    Create Session    my_session    ${HOST}
    Run Keyword And Expect Error    ${DELETEERROR}    DELETE On Session    my_session    ${DELETE_FAULT}
    Close Browser