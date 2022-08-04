***Settings***

Library    SeleniumLibrary
Library    String

***Variables***

${SERVER}    https://www.alza.cz/EN/
${BROWSER}    chrome

***Test Cases***
Open browser and reach website
    Open Browser    ${SERVER}    ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    Click Element    //a[@class="btnx cookies-info__button js-cookies-info-accept"]
    Sleep    2s
    Click Element    //div[@id="left"]/ul/li/a[@href="/EN/computers-and-laptops"]
    Click Element      //a[@class="category-tiles__tile"][1]
    Sleep    2s
    Click Element    //div[@id='tabs']/ul/li[@aria-controls="cenadesc"]
    Sleep    2s

Collect data for verification and convert
    ${TEXTA}    Get Text    //div[@id='boxc']/div/div[1]/div[@class="bottom"]/div[@class="price"]/div/div/div/span
    ${TEXTB}    Get Text    //div[@id='boxc']/div/div[2]/div[@class="bottom"]/div/div/div/div/span/span
    ${TEXT}=    Fetch From Left    ${TEXTA}    ,-
    ${TEXT1}=    Fetch From Left    ${TEXTB}    ,-
    ${NUMBER1}=    Convert To Number    ${TEXT}
    ${NUMBER2}=    Convert To Number    ${TEXT1}
    Set Global Variable    ${NUMBER1}
    Set Global Variable    ${NUMBER2}

Add two most expensive products into the basket
    Click Element    //div[@id='boxc']/div/div[1]/div[@class="bottom"]/div/span
    Sleep    2s
    Go Back
    Sleep    2s
    Click Element    //div[@id='boxc']/div/div[2]/div[@class="bottom"]/div/span
    Go Back
    Sleep    2s

Navigate to Shopping cart and collect grand total
    Click Element    //div[@id='top1']/div[@class='headericonsc']/div/div
    ${TEXTC}=    Get Text    //span[@id='price']
    ${TEXT3}=    Fetch From Left    ${TEXTC}    Kč
    ${NUMBER3}=    Convert To Number    ${TEXT3}
    Set Global Variable    ${NUMBER3}

Confirm two most expensive products are in cart
    ${CART}=    Evaluate    ${NUMBER1} + ${NUMBER2}
    Should Be True    ${CART} == ${NUMBER3}
    Close Browser
    
