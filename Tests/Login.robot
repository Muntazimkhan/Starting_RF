*** Settings ***
Library    Selenium2Library
Resource    ../Resources/variable.robot
Resource   ../Page-Objects/keywords.robot

*** Test Cases ***

Login with valid credentials
   Login to SwagLab
    
Verify the user is able to logout
    Login to SwagLab
    #Open Browser    ${URL}    ${BROWSER}
    Wait Until Element Is Visible     react-burger-menu-btn
    Click Element    react-burger-menu-btn
    Wait Until Element Is Visible    logout_sidebar_link
    Click Element    logout_sidebar_link
    Page Should Contain    Swag Labs