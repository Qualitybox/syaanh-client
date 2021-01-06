*** Settings ***
Resource    ${EXECDIR}/PageObjects/Common.robot
Variables    Data.yaml
Test Teardown    Teardown tests

*** Test Cases ***
Register
    [Tags]    UI
    Start Application
    Check pop-up    ${Popup_title}
    Close pop-up    ${Popup_title}
    Click login
    Click register link
    Fill up input form    ${FormRegister}
    Fill register input    Mobile    ${Mobile}    ${Mobile_id}
    Fill register input    Email    ${Email}    ${Email_id}
    Fill register input    Password    ${Password}    ${Password_id}
    Click button type    ${Btn_Register}
    Close confirmation pop-up register    ${Msg_Confirmation_register}
