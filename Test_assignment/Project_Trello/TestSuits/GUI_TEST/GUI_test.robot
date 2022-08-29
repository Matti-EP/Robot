***Settings***
Library    SeleniumLibrary
Resource    ../../Keywords/Login_keywords.robot
Resource    ../../Keywords/Board_keywords.robot

***Test Cases***
Login
    Login Webpage Trello
Confirm Card Exists
    Confirm Card Exists
Create New Card
    Create New Card
Update Card
    Update Card
Delete Card
    Delete Card