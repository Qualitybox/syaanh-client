*** Settings ***
Resource    ${EXECDIR}/PageObjects/Order.robot
Resource    ${EXECDIR}/PageObjects/Home.robot
Variables   Data.yaml

*** Test Cases ***
Change language
    [Tags]    UI
    Launch Syaanh website
    login user    ${Mobile_login}    ${Password_login}
    Change language            ${Arabic}
