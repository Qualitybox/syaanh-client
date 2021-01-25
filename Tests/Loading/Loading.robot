*** Settings ***
Resource    ${EXECDIR}/PageObjects/Home.robot
Resource    ${EXECDIR}/PageObjects/Order.robot
Variables   Data.py
Library    DateTime
Test Teardown    Pass Execution     msg
*** Test Cases ***
Home page
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Open Browser     ${Website_URL}    ${BROWSER}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}
    
Go to category
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To         https://dev.syaanh.com/en/shop/home__appliances
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

Go to cart
    [Tags]    
    ${firsttime} =        Get Time    format= epoch
    Go To         https://dev.syaanh.com/en/cart-page
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}
    
Categories Home Automation
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To         https://dev.syaanh.com/en/shop/recommended_products
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}