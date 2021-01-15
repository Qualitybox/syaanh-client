*** Settings ***
Resource    ${EXECDIR}/PageObjects/Common.robot
Variables   Data.yaml

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
