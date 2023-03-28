*** Settings ***
Library           SeleniumLibrary
Resource          ../Variables/Logins.robot
Resource          ../Variables/Plps.robot
Resource          ../Variables/Pdps.robot

*** Keywords ***
SortHighToLow
    select from list by label    ${Sorter}    Price (high to low)

ValidateHighToLow
    List Selection Should Be    ${Sorter}    Price (high to low)

SortLowToHigh
    select from list by label    ${Sorter}    Price (low to high)

ValidateLowToHigh
    List Selection Should Be    ${Sorter}    Price (low to high)

SortAtoZ
    select from list by label    ${Sorter}    Name (A to Z)

ValidateAtoZ
    List Selection Should Be    ${Sorter}    Name (A to Z)

SortZtoA
    select from list by label    ${Sorter}    Name (Z to A)

ValidateZtoA
    List Selection Should Be    ${Sorter}    Name (Z to A)

ValidateAddToCart
    Wait Until Element Is Visible    ${ShopingCartBadge}
    Element Text Should Be    ${ShopingCartBadge}    1

AddToCartTshirt
    click element    ${AddToCartButton-tshit}

Click remove Tshirt
    Click Element    id=remove-sauce-labs-backpack"

Validite empty cart
    Wait Until Element Is Visible    ${ShopingCartBadge}
    Element Text Should Be    ${ShopingCartBadge}    1
