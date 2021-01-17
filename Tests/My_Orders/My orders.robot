*** Settings ***
Resource    ${EXECDIR}/PageObjects/Order.robot
Resource    ${EXECDIR}/PageObjects/Home.robot
Variables   Data.yaml

*** Test Cases ***
My orders
    [Tags]    UI
    Launch Syaanh website
    Login user    ${Mobile_login}    ${Password_login}
    Go to my orders
