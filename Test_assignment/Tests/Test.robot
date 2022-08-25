#activate virtual environment in Test_app folder: testing-env\Scripts\activate.bat
#run script while in folder of script: python -m robot Test.robot

***Settings***
Library    SeleniumLibrary
Resource    ../PageObject/Keywords/GetRequest.robot

***Test Cases***
Perform API POST request
    Connect to POST API

Perform API GET request
    Connect to GET API
    
Perform API PUT request
    Connect to PUT API

Perform API DELETE request
    Connect to DELETE API

Perform NEGATIVE API GET request
    Unsuccessful GET API

Perform NEGATIVE API POST request
    Unsuccessful POST API

Perform NEGATIVE API PUT request
    Unsuccessful PUT API

Perform NEGATIVE API DELETE request
    Unsuccessful DELETE API