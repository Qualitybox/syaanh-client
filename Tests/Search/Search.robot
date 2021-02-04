*** Settings ***
Resource    ${EXECDIR}/PageObjects/Common.robot
Resource    ${EXECDIR}/PageObjects/Home.robot
Variables   Data.py

*** Test Cases ***
C18_User can login with correct username and password
    [Tags]    UI    ci
    Launch Syaanh website
    Click Element                    ${Box_search}    
    Input Text                       ${Box_search}      ${Exp_search}  
    Click Element                    ${Icon_search} 
    
    