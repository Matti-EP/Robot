***Settings***
Library    SeleniumLibrary
Library    RequestsLibrary
Resource    ../Objects/Login_Objects.robot
Resource    ../TestData/Login_TestData.robot

***Keywords***
    #PUT THIS INTO PER PAGE STRUCTURE POM
Login Webpage Trello
    Open Browser    ${WEBSITE}    chrome
    #Maximize Browser Window
    Click Element    ${USER_NAME_LOGIN_FIELD}
    Input Text    ${USER_ACCOUNT_LOGIN_FIELD}    ${USER_ACCOUNT}
    Wait Until Element Is Visible    ${LOGIN_WITH}
    Click Element    ${LOGIN_WITH}
    Wait Until Element Is Visible    ${PASSWORD_FIELD}
    Input Password    ${PASSWORD_FIELD}    ${USER_PASSWORD}
    Click Button    ${LOGIN_SUBMIT}