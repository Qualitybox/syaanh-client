*** Settings ***
Resource    ${EXECDIR}/PageObjects/Common.robot
Variables   Data.py

*** Test Cases ***
C18_User can login with correct username and password
    [Tags]    UI
    Start Application
    Hendle Recommanded product popup
    Click login
    Fill up form Login    ${Mobile_login}    ${Password_login}
    Click button type     ${Btn_login}
    Check pop-up not visible   ${Popup_login}

C15_User cannot login with incorrect username and password
    [Tags]    UI
    Start Application
    Hendle Recommanded product popup
    Click login
    Fill up form Login    ${Mobile_login_invalid}    ${Password_login_invalid}
    Click button type     ${Btn_login}
    Check error message   ${msg_login_invalid}

C1_User cannot login with empty username and empty password
    [Tags]    UI
    Start Application
    Hendle Recommanded product popup
    Click login
    Click button type     ${Btn_login}
    Check error message    The email field is required
    Check error message    The password field is required

C12_User cannot login with empty username
    Start Application
    Hendle Recommanded product popup
    Click login
    Click button type     ${Btn_login}
    Fill up form Login    ${EMPTY}    ${password_login}
    Click button type     ${Btn_login}
    Check error message    ${msg_username_empty}

C13-User cannot login with empty password
    Start Application
    Hendle Recommanded product popup
    Click login
    Click button type     ${Btn_login}
     Fill up form Login    ${Mobile_login }    ${EMPTY}
    Click button type     ${Btn_login}
    Check error message   ${msg_password_empty}


