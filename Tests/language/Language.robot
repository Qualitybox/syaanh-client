*** Settings ***
Resource    ${EXECDIR}/PageObjects/Home.robot
Variables    Data.py
Test Teardown    Close All Browsers

*** Test Cases ***
Language
    [Tags]    UI    sy
    Open Syaanh Website
    Delete Pop-Up
    Login
    Change language    ${Arabic}
