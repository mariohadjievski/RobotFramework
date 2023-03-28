*** Settings ***
Test Setup        OpenApp
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          ../Keywords/Login.robot
Resource          ../Keywords/Plp.robot
Resource          ../Keywords/Pdp.robot

*** Test Cases ***
TC15
    [Documentation]    Add to cart Sauce Labs Bolt T-Shirt
    ENTERVALIDUSER
    ENTERVALIDPASS
    CLICKLOGINBUTTON
    AddToCartTshirt
    ValidateAddToCart

TC22
    [Documentation]    Add and remove from cart Sauce Labs Bolt T-Shirt
    enter problem user
    enter valid pass
    ClickLoginButton
    ValidateLogin
    AddToCartTshirt
    ValidateAddToCart
    Click remove Tshirt
    Validite empty cart
