*** Settings ***
Library    Selenium2Library

*** Variables ***
${BROWSER}    chrome
${URL}        https://www.saucedemo.com/
${USERNAME}   standard_user
${PASSWORD}   secret_sauce
${USERNAME_LOCATOR}   css=#user-name
${PASSWORD_LOCATOR}   css=#password
${CLICKBUTTON}  css=#login-button

#Add to Cart
${CLICKItemButton}    css=#add-to-cart-sauce-labs-backpack
${ClickCartContainer}    css=#shopping_cart_container

