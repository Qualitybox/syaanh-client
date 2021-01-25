*** Settings ***
Resource    ${EXECDIR}/PageObjects/Home.robot
Variables   Data.py

*** Test Cases ***
Open notification
    [Tags]    UI
    Launch Syaanh website
    Login user                ${Mobile_login}    ${Password_login}
    Open notification
