*** Settings ***
Resource    ${EXECDIR}/PageObjects/Order.robot
Resource    ${EXECDIR}/PageObjects/Home.robot
Variables   Data.yaml

*** Test Cases ***
Create Order
    [Tags]    UI
    Launch Syaanh website
    Login user    ${Mobile_login}    ${Password_login}
    Click service             ${Service_cleaning}
    Select an area            ${Area}
    Fill up checkbox form     ${FormStepOne}
    Click button continue     ${ButtonStep}[StepOne]
    Next step title           ${TitleStep}[Step2]
    Click button continue     ${ButtonStep}[StepTwo]
    Next step title           ${TitleStep}[Step3]
    Fill up checkbox form     ${FormStepThree}
    Click button continue     ${ButtonStep}[StepThree]
    Next step title           ${TitleStep}[Step4]
    Input description         ${Description_text}
    Fill up checkbox form     ${FormStepFour}
    Click button continue     ${ButtonStep}[StepFour]
    Next step title           ${TitleStep}[Step5]
    Click button continue     ${ButtonStep}[StepFive]
    Check informations order  ${OrderInformations}
    Click button confirm and send
    Check pop-up success create order
