*** Settings ***
Library           SeleniumLibrary
Resource          ../Variables/Logins.robot
Resource          ../Variables/Plps.robot
Resource          ../Variables/Pdps.robot
Resource          ../Variables/Chart.robot

*** Keywords ***
ClickBackpack
    click element    ${BackpackIcon}

ValidateClickedBackpack
    ELEMENT TEXT SHOULD BE    id=back-to-products    Back to products

AddToCartBackpack
    click element    ${AddToCartBackpack}

ValidateOpenChart
    Element Text Should Be    ${ContinueShopingButton}    Continue Shopping

Click TSHIRT
    CLICK ELEMENT    //IMG[@alt="Sauce Labs Bolt T-Shirt"]
