*** Settings ***
Resource    ${EXECDIR}/PageObjects/Home.robot
Resource    ${EXECDIR}/PageObjects/Order.robot
Variables   Data.py
Library    DateTime
Test Teardown    Pass Execution     msg
*** Test Cases ***
C156_Home page
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Open Browser     ${Website_URL}    ${BROWSER}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C101_Categories Home Automation
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To         ${url_Categories_Home_Automation}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C102_Categories Bedroom
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To         ${url_Categories_Bedroom}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C103_Categories bathroom
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To         ${url_Categories_Bathroom}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C104_Categories Kitchen and Dining
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To         ${url_Categories_Kitshen_and_Laundry}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C105_Categories Housekeeping and Laundry
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To         ${url_Categories_Housekeeping_and_Laundry}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C106_Categories home improvement
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Categories_Home_Impovement}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C107_Button "See more" in Categories Shop
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Button_See_more_in_Categories_Shop}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}
C108_Categories Home Furniture
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Categories_Home_Furniture}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C109_Categories Home Accessories and Decor
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Categories_Home_Accessories_and_Decor}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C110_Categories lighting
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Categories_lighting}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C111_Categories Outdoor
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Categories_Outdoor}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C112_Categories Air Conditioning
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Categories_Air_Conditioning}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C113_Categories Electronics
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Categories_Electronics}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C114_Categories Cars and Automotive
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Categories_Cars_and_Automotive}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C115_Categories Health and Fitness
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Categories_Health_and_Firness}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C116_Categories Pet Supplies
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Categories_Pet_Supplies}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C117_Categories Kids
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Categories_Kids}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C118_Service Cleaning and House maids
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Cleaning_and_Housemaids}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C119_Service Air Conditioner
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Air_Conditoner}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C120_Service Electrical works
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Electrical_works}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C121_Services Painting & Decor
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Painting_Decor}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C122_Carpentry work
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Carpentry_work}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C123_Agriculture Work
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Agriculture_work}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C124_Plumbing Work
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Plumbing_work}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C125_Services Pest Control
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Pest_Control}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C126_Services Furniture Transfer
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Furniture_Transfer}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C127_Services Satellite Technician
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Satelite_Technician}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C128_Services Car Transfer
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Car_Transfer}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C129_Services Electronic Devices
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To         ${url_Service_Electronic_Devices}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C130_Services Laundry
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Laundry}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C131_Services Mobiles Maintenance
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Mobiles_Maintenance}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C132_Services Aluminum work
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Aluminum_work}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C133_Services Blacksmith work
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Blacksmith_work}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C134_Services Spare Parts
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Blacksmith_work}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C135_Services Surveillance Cameras
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Surveillance_Cameras}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C136_Services Tank cleaning
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To            ${url_Service_Tank_Cleaning}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C137_Services Computer maintenance
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Computer_maintenance}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C138_Services Swimming Pools
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Swimming_Pools}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C139_Services Car washing
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Car_washing}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C140_Services Car services
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Car_services}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C141_Services Furniture & Curtains
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Furniture_Curtains}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C142_Services Tents
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Tents}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C143_Services Internet networks
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Internet_networks}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C144_Services Insulation
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Insulation}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C145_Services Marine services
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Marine_services}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C146_Services Gas leak detector
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Gas_leak_detector}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C147_Services Sterilization
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Sterilization}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C148_Services Car Sterilization
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Service_Car_Sterilization}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C149_Product detail
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Product_Details}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C151_Privacy Policy
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Privacy_Policy}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C152_Contact us
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Contact_us}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C153_Provider register
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To           ${url_Provider_register}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C154_About
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_About}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result}

C155_Our Prices
    [Tags]    lo
    ${firsttime} =        Get Time    format= epoch
    Go To          ${url_Our_Prices}
    ${secondtime} =        Get Time    format= epoch
    ${result} =        Subtract Time From Time     ${secondtime}     ${firsttime}
    Log   ${result} 