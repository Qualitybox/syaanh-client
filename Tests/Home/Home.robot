*** Settings ***
Resource    ${EXECDIR}/PageObjects/Home.robot
Variables   Data.py

*** Test Cases ***
C175_User can check home page display
    [Tags]    UI
    Launch Syaanh website
    Check home contains
