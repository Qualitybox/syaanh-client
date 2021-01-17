*** Settings ***
Resource    ${EXECDIR}/PageObjects/Home.robot
Resource    ${EXECDIR}/PageObjects/Cart.robot
Variables   Data.py
Test Teardown    Close All Browsers

*** Test Cases ***

C20_User can delete a product from cart
    [Tags]    UI    skip
    Launch Syaanh website
    Login user                   ${Mobile_login}    ${Password_login}
    Go to my cart
    Remove Product From Cart    ${ProductToBeRemovedFromCart}
