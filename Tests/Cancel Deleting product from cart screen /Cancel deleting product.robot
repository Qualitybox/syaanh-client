*** Settings ***
Resource    ${EXECDIR}/PageObjects/Common.robot
Resource    ${EXECDIR}/PageObjects/Home.robot
Variables   Data.py
Test Teardown    Close All Browsers

*** Test Cases ***
Cancel deleting product
        [Tags]    UI    sy
    Open Syaanh Website
    Delete Pop-Up
    Login    
    Cancel Deleting Product from cart screen
    