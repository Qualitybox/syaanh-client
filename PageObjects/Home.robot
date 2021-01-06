*** Settings ***
Resource                     ${EXECDIR}/PageObjects/Common.robot
Variables                    Webelements/home.py
*** Keywords ***

Open Syaanh Website
     Start Application
    Title Should Be    Home
    
Delete Pop-Up 
    Check pop-up          ${Popup_title}
    Close pop-up          ${Popup_title}
    
Login 
    Click Element         ${Login}
    Fill up form Login    ${Mobile_login}    ${Password_login}
    Click Button          ${Button_login}   
    Wait Until Element Is Not Visible   ${Popup_login}
   