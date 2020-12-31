*** Settings ***
Resource    ${EXECDIR}/PageObjects/Common.robot
Resource    ${EXECDIR}/PageObjects/Home.robot
Variables   Data.py
Test Teardown    Close All Browsers

*** Test Cases ***
Active Orders
    [Tags]    UI    sy
    
    Open Syaanh Website
    Delete Pop-Up
    Login    
    Active Orders