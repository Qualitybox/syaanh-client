*** Settings ***
Resource    ${EXECDIR}/PageObjects/Common.robot
Resource    ${EXECDIR}/PageObjects/Home.robot
Variables   Data.py
Test Teardown    Close All Browsers

*** Test Cases ***
provider register
    [Tags]    UI    sy    skipped
    Open Syaanh Website
    Delete Pop-Up
    Login    
    Provider register