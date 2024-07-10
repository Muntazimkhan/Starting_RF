*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Edge
${URL}        https://www.saucedemo.com/
${USERNAME}   standard_user
${PASSWORD}   secret_sauce
${USERNAME_LOCATOR}   css=#user-name
${PASSWORD_LOCATOR}   css=#password
${CLICKBUTTON}  css=#login-button


*** Test Cases ***
Visit Swag Labs Website
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains    Swag Labs
    Page Should Contain    Swag Labs
    Sleep    5s
    Close Browser

Login with valid credentials
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains    Swag Labs
    Page Should Contain    Swag Labs
    Input Text    ${USERNAME_LOCATOR}    ${USERNAME}
    Input Password    ${PASSWORD_LOCATOR}    ${PASSWORD}
    Click Button    ${CLICKBUTTON}
    Sleep    5s
    Close Browser

*** Keywords ***
