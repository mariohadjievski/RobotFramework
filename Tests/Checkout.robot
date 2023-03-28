*** Settings ***
Test Setup        OpenApp
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          ../Keywords/Login.robot
Resource          ../Keywords/Plp.robot
Resource          ../Keywords/Pdp.robot
Resource          ../Keywords/Chart.robot

*** Test Cases ***
TC17
    [Documentation]    Add to cart Sauce Labs Bolt T-Shirt from PLP
    ENTERVALIDUSER
    ENTERVALIDPASS
    CLICKLOGINBUTTON
    AddToCartTshirt
    ValidateAddToCart
    ClickChart
    ValidateOpenChart
    Click Checkout
    Valdiate Chekout
    Enter first name
    Enter Last Name
    Enter zip code
    click continue
    Verify Clicked continue
    click finish
    Valdaite Order

TC18
    [Documentation]    Checkout Sauce Labs Bolt T-Shirt from PDP
    ENTERVALIDUSER
    ENTERVALIDPASS
    CLICKLOGINBUTTON
    CLICK TSHIRT
    ValidateClickedBackpack
    AddToCartTshirt
    ValidateAddToCart
    ClickChart
    ValidateOpenChart
    Click Checkout
    Valdiate Chekout
    Enter first name
    Enter Last Name
    Enter zip code
    click continue
    Verify Clicked continue
    click finish
    Valdaite Order

TC19
    [Documentation]    increse the QTY to 2 on Sauce Labs Backpack
    ENTERVALIDUSER
    ENTERVALIDPASS
    CLICKLOGINBUTTON
    AddToCartTshirt
    ValidateAddToCart
    ClickChart
    ValidateOpenChart
    Change quantity 2
