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
    
Check home contains
    Wait Until Element Is Visible       ${home_logo}
    Wait Until Element Is Visible       ${home_title}
    Wait Until Element Is Visible       ${home_search}
    Wait Until Element Is Visible       ${home_categories}
    Wait Until Element Is Visible       ${home_language}
    Wait Until Element Is Visible       ${home_link_login}    timeout= 40
    Wait Until Element Is Visible       ${home_btn_CrateOrder}    timeout= 40
    Wait Until Element Is Visible       ${home_txt_ShopCategories}    timeout= 40
    Wait Until Element Is Visible       ${home_link_seeMore}    timeout= 40
    Wait Until Element Is Visible       ${home_link_SelectService}    timeout= 40