*** Settings ***
Resource    ${EXECDIR}/PageObjects/Home.robot
Resource    ${EXECDIR}/PageObjects/Cart.robot
Variables   Data.py
Test Teardown    Close All Browsers

*** Test Cases ***

My cart
    [Tags]    UI
    Launch Syaanh website
    Login user    ${Mobile_login}    ${Password_login}
    Go to my cart
    

C20_User can delete a product from cart
    [Tags]    UI    skip
    Launch Syaanh website
    Login user                   ${Mobile_login}    ${Password_login}
    Go to my cart
    Remove Product From Cart    ${ProductToBeRemovedFromCart}

C25_User can delete all products from cart
    [Tags]    UI    skip
    Launch Syaanh website
    Login user                   ${Mobile_login}    ${Password_login}
    Go to my cart
    Remove All Product From Cart