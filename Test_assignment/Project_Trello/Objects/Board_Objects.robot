***Settings***
Library    SeleniumLibrary

***Variables***

#For READ
${CONTAIN_CARD}    //span[contains(text(), "Korttinimi")]

#For CREATE
${NEW_CARD_NAME}    New card created
${CLICK_CREATE_ELEMENT}    //span[contains(text(), 'Add a card')]
${INPUT_TEXT_NEW_CARD}    //textarea[contains(@class, "list-card-composer-textarea js-card-title")]
${ADD_CARD_BUTTON}    //input[@value="Add card"]
${SHOULD_CONTAIN_ELEMENT}    //*[contains(text(), "${NEW_CARD_NAME}")]

#For UPDATE
#Below updated /> @class="list-card-composer-textarea js-card-title" change that to @class, "..."
${MOUSE_OVER_UPDATE}    //a[contains(@href,'new-card-created')]//span[contains(@class, "icon-sm icon-edit list-card-operation dark-hover js-open-quick-card-editor js-card-menu")]
${CLICK_ELEMENT_TO_UPDATE}    //a[contains(@href,'new-card-created')]//span[contains(@class, "icon-sm icon-edit list-card-operation dark-hover js-open-quick-card-editor js-card-menu")]
${INPUT_TEXT_FIELD_FOR_UPDATE}    //textarea[contains(@class, "list-card-edit-title js-edit-card-title")]
${UPDATED_TEXT}    This is updated text
${SAVE_UPDATES_BUTTON}    //input[contains(@class, "nch-button nch-button--primary wide js-save-edits")]
${SHOULD_CONTAIN_ELEMENT}    //*[contains(text(), "This is updated text")]

#for DELETE
${MOUSE_OVER_DELETE}    //a[contains(@href,'new-card-created')]//span[contains(@class, "icon-sm icon-edit list-card-operation dark-hover js-open-quick-card-editor js-card-menu")]
${CLICK_ELEMENT_TO_DELETE}    //a[contains(@href,'new-card-created')]//span[contains(@class, "icon-sm icon-edit list-card-operation dark-hover js-open-quick-card-editor js-card-menu")]
${CLICK_ELEMENT_TO_CONFIRM_DELETE}    //a[contains(@class, "quick-card-editor-buttons-item js-archive")]
${DELETE_SHOULD_NOT_CONTAIN_ELEMENT}    //a[contains(@class, "list-card js-member-droppable ui-droppable") and .//span[contains(., "new-card-created")]]