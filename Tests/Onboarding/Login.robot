*** Settings ***
Resource    ${EXECDIR}/PageObjects/Common.robot
Resource    ${EXECDIR}/PageObjects/Home.robot
Variables   Data.py

*** Test Cases ***
C18_User can login with correct username and password
    [Tags]    UI    ci
    Launch Syaanh website
    Login user            ${Mobile_login}            ${Password_login}


C15_User cannot login with incorrect username and password
    [Tags]    UI
    Launch Syaanh website
    Click login
    Fill up form Login    ${Mobile_login_invalid}    ${Password_login_invalid}
    Click button type     ${Btn_login}
    Check error message   ${msg_login_invalid}

C1_User cannot login with empty username and empty password
    [Tags]    UI
    Launch Syaanh website
    Click login
    Click button type     ${Btn_login}
    Check error message    The email field is required
    Check error message    The password field is required

C12_User cannot login with empty username
    Launch Syaanh website
    Click login
    Click button type     ${Btn_login}
    Fill up form Login    ${EMPTY}    ${password_login}
    Click button type     ${Btn_login}
    Check error message    ${msg_username_empty}

C13_User cannot login with empty password
    Launch Syaanh website
    Click login
    Click button type     ${Btn_login}
     Fill up form Login    ${Mobile_login }    ${EMPTY}
    Click button type     ${Btn_login}
    Check error message   ${msg_password_empty}
C14_User cannot login with invalid username
    Launch Syaanh website
    Click login
    Click button type     ${Btn_login}
     Fill up form Login    ${Mobile_inv}   ${Password}
    Click button type     ${Btn_login}
    Check error message    ${msg_username_invalid} 
C15_User cannot login with invalid password 
    Launch Syaanh website
    Click login
    Click button type     ${Btn_login}
     Fill up form Login    ${username}   ${Password_invalid}
    Click button type     ${Btn_login}
    Check error message    ${msg_Password_invalid} 
C176_User cannot login with invalid username and password
    Launch Syaanh website
    Click login
    Click button type     ${Btn_login}
     Fill up form Login     ${Mobile_inv}   ${Password_invalid}
    Click button type     ${Btn_login}
    Check error message    ${msg_Password_invalid}
C19_User cannot login with incorrect username
    Launch Syaanh website
    Click login
    Click button type     ${Btn_login}
     Fill up form Login     ${Mobile}   ${Password}
    Click button type     ${Btn_login}
    Check error message    ${msg_username_invalid}
C17_User cannot login with incorrect password
      Launch Syaanh website
    Click login
    Click button type     ${Btn_login}
     Fill up form Login     ${username}   ${Incorrect_Pass}}
    Click button type     ${Btn_login}
    Check error message    ${msg_Password_incorect}
    