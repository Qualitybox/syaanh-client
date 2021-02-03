*** Settings ***
Resource    ${EXECDIR}/PageObjects/Home.robot
Variables   Data.py

*** Test Cases ***
C11_user can check Notification with login
    
    [Tags]    UI    ci
    Launch Syaanh website
    Login user                ${Mobile_login}    ${Password_login}
    Open notification
C95_user cannot check Notification without login 
     Launch Syaanh website
     Verify notification not existe 
    