*** Settings ***
Test Setup        openapp
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          ../Keywords/Login.robot
Resource          ../Keywords/Plp.robot

*** Test Cases ***
TC01
    [Documentation]    Empty user and pass
    ClickLoginButton
    ValidateErorMessage(emptyuser)

TC02
    [Documentation]    Empty user and valid pass
    EnterValidPass
    ClickLoginButton
    ValidateErorMessage(emptyuser)

TC03
    [Documentation]    Empty user and invalid pass
    EnterInvalidPass
    ClickLoginButton
    ValidateErorMessage(emptyuser)

TC04
    [Documentation]    Valid user Empty pass
    EnterValidUser
    ClickLoginButton
    ValidateErrorMessage(emptypass)

TC05
    [Documentation]    Invalid user Empty pass
    EnterInvalidUser
    ClickLoginButton
    ValidateErrorMessage(emptypass)

TC06
    [Documentation]    Invalid user Invalid pass
    EnterInvalidUser
    EnterInvalidPass
    ClickLoginButton
    ValidateErrorMessage(invalidPass&User)

TC07
    [Documentation]    Valid user Invalid pass
    EnterValidUser
    EnterInvalidPass
    ClickLoginButton
    ValidateErrorMessage(invalidPass&User)

TC08
    [Documentation]    Invalid user valid pass
    EnterInvalidUser
    EnterInvalidPass
    ClickLoginButton
    ValidateErrorMessage(invalidPass&User)

TC09
    [Documentation]    Valid user valid pass
    EnterValidUser
    EnterValidPass
    ClickLoginButton
    ValidateLogin

TC20
    [Documentation]    Login with locked user
    enter locked user
    enter valid pass
    ClickLoginButton
    ValidateErrorMassage(LockedOutUser)

TC21
    [Documentation]    Problem user valid pass
    EnterProblemUser
    EnterValidPass
    ClickLoginButton
    ValidateLogin
