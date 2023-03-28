*** Settings ***
Library           SeleniumLibrary
Resource          ../Variables/Logins.robot

*** Keywords ***
OpenApp
    open browser    https://www.saucedemo.com/    chrome
    Maximize Browser Window

ClickLoginButton
    click element    id=login-button

ValidateErorMessage(emptyuser)
    element text should be    //div[@class="error-message-container error"]    Epic sadface: Username is required

EnterValidPass
    input text    id=password    ${validpass}

EnterInvalidPass
    input text    id=password    ${invalidpass}

EnterInvalidUser
    input text    id=user-name    ${invaliduser}

EnterValidUser
    input text    id=user-name    ${validuser}

ValidateErrorMessage(emptypass)
    element TEXT SHOULD BE    //div[@class="error-message-container error"]    Epic sadface: Password is required

ValidateErrorMessage(invalidPass&User)
    element text should be    //div[@class="error-message-container error"]    Epic sadface: Username and password do not match any user in this service

ValidateLogin
    Wait Until Element Is Visible    ${AddToCartBackpack}
    element text should be    ${AddToCartBackpack}    Add to cart

Login
    entervaliduser
    entervalidpass
    clickloginbutton
    ValidateLogin

EnterLockedUser
    input text    id=user-name    locked_out_user

ValidateErrorMassage(LockedOutUser)
    Element Text Should Be    //div[@class="error-message-container error"]    Epic sadface: Sorry, this user has been locked out.

EnterProblemUser
    input text    ${UsernameSpace}    problem_user
