*** Settings ***
Resource    ${EXECDIR}/PageObjects/Home.robot
Variables   Data.yaml

*** Test Cases ***
Open notification
    [Tags]    UI    ci
    Launch Syaanh website
    Login user                ${Mobile_login}    ${Password_login}
    Open notification
