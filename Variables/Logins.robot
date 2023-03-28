*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${validpass}      secret_sauce
${invalidpass}    hot_dog
${validuser}      standard_user
${invaliduser}    hamburger
${Link}           https://www.saucedemo.com/
${LoginButton}    id=login-button
${AddToCartBackpack}    //button[@id="add-to-cart-sauce-labs-backpack"]
${UsernameSpace}    id=user-name
