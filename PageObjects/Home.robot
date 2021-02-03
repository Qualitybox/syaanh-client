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
 Check Home Menu
    Wait Until Element Is Visible    ${login}
    Wait Until Page Contains Element    ${langauage}
    Wait Until Element Is Visible    ${Button_categories}
    Wait Until Element Is Visible    ${Icon_Syaanh}
    Wait Until Element Is Visible    ${Button_create}
    Wait Until Element Is Visible    ${Shop_categories}


