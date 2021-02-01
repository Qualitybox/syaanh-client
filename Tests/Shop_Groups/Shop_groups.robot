*** Settings ***
Resource    ${EXECDIR}/PageObjects/Home.robot
Resource    ${EXECDIR}/PageObjects/Shop.robot
Variables   Data.py

*** Test Cases ***
Shop groups
    [Tags]    UI
    Launch Syaanh website
    Login user                   ${Mobile_login}    ${Password_login}
    Purchase from Shop groups    ${Category}
