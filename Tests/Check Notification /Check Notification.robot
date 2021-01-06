*** Settings ***
Resource    ${EXECDIR}/PageObjects/Common.robot
Resource    ${EXECDIR}/PageObjects/Home.robot
Variables   Data.py
Test Teardown    Teardown tests
*** Test Cases ***
Check notification
    [Tags]    UI
      Open Syaanh Website
      Delete Pop-Up
      Login  
    Check my orders
