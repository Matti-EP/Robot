***Settings***
Library    SeleniumLibrary
Library    RequestsLibrary
Resource    ../Objects/Board_Objects.robot

***Keywords***
Confirm Card Exists
    Sleep    2s    #NOT OPTIMAL BUT ALTERNATIVE IS?.
    Page Should Contain Element    ${CONTAIN_CARD}

Create New Card
    Click Element    ${CLICK_CREATE_ELEMENT}
    Input Text    ${INPUT_TEXT_NEW_CARD}    ${NEW_CARD_NAME}
    Click Element    ${ADD_CARD_BUTTON}
    Page Should Contain Element    ${SHOULD_CONTAIN_ELEMENT}

Update Card
    Wait Until Element Is Visible    ${MOUSE_OVER_UPDATE}
    Mouse Over    ${MOUSE_OVER_UPDATE}    #NOT DESIREABLE
    Click Element    ${CLICK_ELEMENT_TO_UPDATE}
    Input Text    ${INPUT_TEXT_FIELD_FOR_UPDATE}    ${UPDATED_TEXT}
    Click Element    ${SAVE_UPDATES_BUTTON}
    Page Should Contain Element    ${SHOULD_CONTAIN_ELEMENT}

Delete Card
    Mouse Over    ${MOUSE_OVER_DELETE}
    Click Element    ${CLICK_ELEMENT_TO_DELETE}
    Click Element    ${CLICK_ELEMENT_TO_CONFIRM_DELETE}
    Page Should Not Contain Element    ${DELETE_SHOULD_NOT_CONTAIN_ELEMENT}
    Close Browser