*** Settings ***
Resource    ${EXECDIR}/PageObjects/Common.robot
Resource    ${EXECDIR}/PageObjects/Home.robot
Variables   Data.py
Test Teardown    Close All Browsers

*** Test Cases ***
Log Out
        [Tags]    UI    sy    skipped
    Open Syaanh Website
    Delete Pop-Up
    Login    
    Log out 