*** Settings ***
Resource    Common.robot
Variables    Webelements/Home.py

*** Keywords ***

Launch Syaanh website
    Start Application
    Handle Recommanded product popup

Login user
    [Arguments]                         ${username}        ${Password}
    Click login
    Fill up form Login                  ${username}        ${Password}
    Click Element                       ${Button_login}
    Wait Until Element Is Not Visible   ${Popup_login}

Fill up form Login
    [Arguments]    ${mobile}    ${password}
    Wait Until Element Is Visible      ${Popup_login}
    Input Text    ${input_mobile}      ${mobile}
    Input Text    ${input_password}    ${password}