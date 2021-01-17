*** Settings ***
Resource    ${EXECDIR}/PageObjects/Home.robot
Variables   Data.yaml

*** Test Cases ***
Shop menu
    [Tags]    UI
    Launch Syaanh website
    Login user                 ${Mobile_login}    ${Password_login}
    Purchase from Shop menu    ${Category}        ${Product}
