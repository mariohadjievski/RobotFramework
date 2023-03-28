*** Settings ***
Test Setup        OpenApp
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          ../Keywords/Login.robot
Resource          ../Keywords/Plp.robot
Resource          ../Keywords/Pdp.robot

*** Test Cases ***
TC16
    [Documentation]    Add to cart Sauce Labs Backpack
    ENTERVALIDUSER
    ENTERVALIDPASS
    CLICKLOGINBUTTON
    ClickBackpack
    ValidateClickedBackpack
    AddToCartBackpack
    ValidateAddToCart
