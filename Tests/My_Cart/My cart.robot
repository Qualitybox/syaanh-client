*** Settings ***
Resource    ${EXECDIR}/PageObjects/Home.robot
Variables   Data.yaml

*** Test Cases ***
My cart
    [Tags]    UI
    Launch Syaanh website
    Login user    ${Mobile_login}    ${Password_login}
    Go to my cart
