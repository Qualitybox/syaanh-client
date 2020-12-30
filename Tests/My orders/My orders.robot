*** Settings ***
Resource    ${EXECDIR}/PageObjects/Common.robot
Resource    ${EXECDIR}/PageObjects/Home.robot
Variables   Data.py
Test Teardown    Close All Browsers

*** Test Cases ***
My orders
    [Tags]    UI    sy
    
    Open Syaanh Website
    Delete Pop-Up
    Login    
    Check my order