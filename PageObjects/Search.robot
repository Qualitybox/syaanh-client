*** Settings ***
Resource    Common.robot
Variables    Webelements/Search.py
*** Keywords ***
Search for existing product
    [Arguments]    ${Exp_search}
    Click Element                    ${Box_search}    
    Input Text                       ${Box_search}      ${Exp_search}  
    Click Element                    ${Icon_search} 
    Wait Until Page Contains Element  ${Search_menu}
    
Search for inexisting product
      [Arguments]    ${Exp_search_not_found}
     Click Element                    ${Box_search}    
    Input Text                        ${Box_search}      ${Exp_search_not_found}
    Click Element                     ${Icon_search}   
    Wait Until Page Contains Element  ${Not_found}