
*** Settings ***
Library   SeleniumLibrary
Library   String    

  
*** Keywords ***
Editar E-mail Vazio
    [Documentation]    Verifica se uma mensagem de erro aparece ao tentar submeter um e-mail vazio
    Wait Until Element Is Visible    locator=${FULL_NAME_FIELD}    timeout=10s
    Input Text    locator=${EMAIL_FIELD}    text= ' '
    Click Button    locator=${SAVE_BUTTON}  
    Wait Until Element Is Visible    xpath=//p[contains(text(), 'Email inválido')]    timeout=10s
    ${error_message} =    Get Text    xpath=//p[contains(text(), 'Email inválido')]
    Log    Mensagem de erro capturada: ${error_message}
    Should Be Equal As Strings    ${error_message}    Email inválido 
Editar E-mail Inválido sem domínio
    [Documentation]    Verifica se uma mensagem de erro aparece ao tentar submeter um e-mail sem dominio
    Wait Until Element Is Visible    locator=${FULL_NAME_FIELD}    timeout=10s
    Input Text    locator=${EMAIL_FIELD}      text= 'sysadmin@'  # Exemplo de e-mail sem domínio
    Click Button   locator=${SAVE_BUTTON}
    Wait Until Element Is Visible    xpath=//p[contains(text(), 'Email inválido')]    timeout=10s
    ${error_message} =    Get Text    xpath=//p[contains(text(), 'Email inválido')]
    Log    Mensagem de erro capturada: ${error_message}
    Should Be Equal As Strings    ${error_message}    Email inválido 
Editar E-mail Com Espaços
    [Documentation]    Verifica se uma mensagem de erro aparece ao tentar submeter um e-mail com espaços
    Wait Until Element Is Visible    locator=${FULL_NAME_FIELD}    timeout=10s
    Input Text    locator=${EMAIL_FIELD }    text= 'sysadmintestetd hvsvsd'   
    Click Button    locator=${SAVE_BUTTON}
     Wait Until Element Is Visible    xpath=//p[contains(text(), 'Email inválido')]    timeout=10s
    ${error_message} =    Get Text    xpath=//p[contains(text(), 'Email inválido')]
    Log    Mensagem de erro capturada: ${error_message}
    Should Be Equal As Strings    ${error_message}    Email inválido 
Editar E-mail Válido
    [Documentation]    Verifica se o sistema aceita um e-mail válido ao editar
    Wait Until Element Is Visible    locator=${FULL_NAME_FIELD}    timeout=10s
    Input Text    locator=${EMAIL_FIELD}    text= ' sysadmin@qacoders.com'     # E-mail válido
    Click Button    locator=${SAVE_BUTTON}
    Close Browser   
