*** Settings ***
Resource    ${EXECDIR}/PageObjects/Order.robot
Resource    ${EXECDIR}/PageObjects/Home.robot
Resource    ${EXECDIR}/PageObjects/User.robot
Variables   Data.py

*** Test Cases ***
C4_Change language
    [Tags]    UI
    Launch Syaanh website
    login user    ${Mobile_login}    ${Password_login}
    Change language            ${Arabic}

C3_Edit Profile
    [Tags]    UI
    Launch Syaanh website
    login user    ${Mobile_login}    ${Password_login}
    Go to my profile
    Change user photo and name     ${Name}      ${CURDIR}${/}test.png
    Change user password    ${Password_login}