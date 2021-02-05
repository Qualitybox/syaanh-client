*** Settings ***
Resource    ${EXECDIR}/PageObjects/Common.robot
Resource    ${EXECDIR}/PageObjects/Home.robot
Resource    ${EXECDIR}/PageObjects/Search.robot
Variables   Data.py

*** Test Cases ***
C26_User can search for existing product
    [Tags]    UI    ci
    Launch Syaanh website
    Search for existing product    ${Exp_search}
C70_User cannot search for inexisting product
    Launch Syaanh website
    Search for inexisting product     ${Exp_search_not_found}