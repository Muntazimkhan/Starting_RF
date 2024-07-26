***settings***
Library     Selenium2Library
Resource    ../Resources/variable.robot

*** Keywords ***
Login to SwagLab
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    ${USERNAME_LOCATOR}    ${USERNAME}
    Input Password    ${PASSWORD_LOCATOR}    ${PASSWORD}
    Click Button    ${CLICKBUTTON}
    Sleep    5s
      
Add to cart
    Click Button    ${CLICKItemButton}
    ${BadgecOUNT}  Get Text    //span[@class="shopping_cart_badge"]
    Should Be Equal    ${BADGECOUNT}    1         