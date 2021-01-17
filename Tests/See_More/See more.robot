*** Settings ***
Resource    ${EXECDIR}/PageObjects/Home.robot
Resource    ${EXECDIR}/PageObjects/Shop.robot
Variables   Data.yaml

*** Test Cases ***
See more
    [Tags]    UI    skip
    Launch Syaanh website
    Login user    ${Mobile_login}    ${Password_login}
    Clic See More categories
