*** Settings ***
Library           SeleniumLibrary
Resource          ../Variables/Logins.robot
Resource          ../Variables/Plps.robot
Resource          ../Variables/Pdps.robot
Resource          ../Variables/Chart.robot

*** Keywords ***
ClickChart
    click element    ${ChartButton}

Click Checkout
    click element    ${ChekoutButton}

Valdiate Chekout
    Wait Until Element Is Visible    ${CancelButton}
    Element Text Should Be    ${CancelButton}    Cancel

Enter first name
    input text    id=first-name    Mile

Enter Last Name
    input text    id=last-name    Kitic

Enter zip code
    input text    id=postal-code    9999

Click Continue
    click element    id=continue

Verify Clicked continue
    Wait Until Element Is Visible    id=finish
    Element Text Should Be    id=finish    Finish

Click Finish
    click element    id=finish

Valdaite Order
    Wait Until Element Is Visible    //h2[@class="complete-header"]
    Element Text Should Be    //h2[@class="complete-header"]    Thank you for your order!

Change quantity 2
    input text    //div[@class="cart_quantity"]    2
