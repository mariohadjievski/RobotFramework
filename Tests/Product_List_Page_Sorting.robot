*** Settings ***
Test Setup        openapp
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          ../Keywords/Login.robot
Resource          ../Keywords/Plp.robot
Resource          ../Variables/Logins.robot
Resource          ../Variables/Plps.robot

*** Test Cases ***
TC10
    [Documentation]     sort by Price (high to low)
    ENTERVALIDUSER
    ENTERVALIDPASS
    CLICKLOGINBUTTON
    SORTHIGHTOLOW
    validatehightolow

TC11
    [Documentation]     sort by Price (low to high)
    ENTERVALIDUSER
    ENTERVALIDPASS
    CLICKLOGINBUTTON
    SORTLOWTOHIGH
    validatelowtohigh

TC12
    [Documentation]    sort by Name (A to Z)
    ENTERVALIDUSER
    ENTERVALIDPASS
    CLICKLOGINBUTTON
    sortatoz
    validateatoz

TC13
    [Documentation]    sort by Name (Z to A)
    ENTERVALIDUSER
    ENTERVALIDPASS
    CLICKLOGINBUTTON
    sortztoa
    validateztoa
