*** Settings ***
Test Setup        openapp
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          ../Keywords/Login.robot
Resource          ../Keywords/Plp.robot
Resource          ../Keywords/Pdp.robot

*** Test Cases ***
TC14
    [Documentation]    Open Sauce Labs Backpack
    ENTERVALIDUSER
    ENTERVALIDPASS
    CLICKLOGINBUTTON
    ClickBackpack
    ValidateClickedBackpack
