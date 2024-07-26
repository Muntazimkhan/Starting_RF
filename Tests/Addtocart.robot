*** Settings ***
Library    Selenium2Library
Resource    ../Resources/variable.robot
Resource    ../Page-Objects/keywords.robot



*** Test Cases ***
User is able to add a product to cart
    Login to SwagLab
    Add to cart
