*** Settings ***
Library                      SeleniumLibrary
Library                      Collections
Library                      OperatingSystem
Variables                    ${EXECDIR}/GlobalProperties.py

*** Keywords ***

Fill up checkbox form
    [Arguments]                              ${Fill_Data}
    FOR                                      ${element}                                  IN                                  @{Fill_Data}
    \                                        Tick checkbox        ${Fill_Data}[${element}]

Enter according to the nature of the field
    [Arguments]                              ${Champs}                                   ${Valeur}
    ${Checkbox}=                             Run Keyword And Return Status               Check the nature of the fields       ${Champs}
    Run Keyword If                           ${Checkbox}                                 Tick checkbox                        ${Champs}
    ...                                      ELSE                                        Tick checkbox        ${Champs}


Etap_Selectionner depuis liste deroulante
    [Arguments]                              ${Name}                                     ${Value}
    ${ChampListe}=                           Set Variable                                //form//label[contains(text(),"${Name}")]/..//label[contains(@class,"input")]//div[contains(@class,"input-group")]
    ${inputchampListe}=                      Set Variable                                ${ChampListe}//div[contains(@class,"dropdown")]/input
    Wait Until Element Is Visible            ${ChampListe}
    Click Element                            ${ChampListe}
    #Wait Until Element Is Visible            ${listd�roulante}
    Input Text                               ${inputchampListe}                          ${Value}
    Press Keys                               None                                        ENTER
    #Wait Until Element Is Not Visible        ${listd�roulante}
    Press Keys   
Tick checkbox
    [Arguments]                              ${Champs}
    ${CheminChamp}=                          Set Variable                                //div//label[contains(text(),"${Champs}")]
    Click Element                            ${CheminChamp}    

Check the nature of the fields
    [Arguments]                              ${champs}
    Element Should Be Visible                //div//label[contains(text(),"${Champs}")]
    
Click button continue
    [Arguments]    ${step}
    ${button} =    Set Variable       //div[@class="form-group order-continue-button"]//button[@data-key="${step}"]//span[contains(text(),"Continue")]/..
    Scroll Element Into View          ${button}
    Click Button                      ${button}

Click button confirm and send
      ${button} =    Set Variable        //div//button//span[contains(text(),"Confirm and send")]/..
      Scroll Element Into View           ${button}
      Click Button                       ${button}

Next step title
    [Arguments]    ${title}
    Wait Until Element Is Visible    //div//span[contains(text(),"${title}")]
    
Input description
    [Arguments]    ${value}
    ${description} =     Set Variable       //textarea[@data-title="Request description"]
    Wait Until Element Is Visible    ${description}
    Input Text    ${description}   ${value} 
    
Check informations order
    [Arguments]                              ${Fill_Data}
    FOR                                      ${element}                                  IN                                  @{Fill_Data}
    \                                        Order informations        ${Fill_Data}[${element}]
Order informations
    [Arguments]    ${value}
    Wait Until Element Is Visible    //div//span[contains(text(),"${value}")]

    
Check pop-up success create order
    ${pop-up} =    Set Variable       //div//span[contains(text(),"was created")]
    Wait Until Element Is Visible  	  ${pop-up}