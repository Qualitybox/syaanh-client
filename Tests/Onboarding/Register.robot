*** Settings ***
Resource    ${EXECDIR}/PageObjects/Home.robot
Variables   Data.py

*** Test Cases ***
Register
    [Tags]    UI
    Launch Syaanh website
    Click login
    Click register link
    Fill register input    Name    ${Name}    ${Name_id}
    Fill register input    Mobile    ${Mobile}    ${Mobile_id}
    Fill register input    Email     ${Email}     ${Email_id}
    Fill register input    Password     ${Password}     ${Password_id}
    Click button type     ${Btn_Register}   
    Close confirmation pop-up register    ${Msg_Confirmation_register}

