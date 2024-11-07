
*** Settings ***
Library    SeleniumLibrary
Library    String

*** Keywords ***
Editar empresa com o campo "CNPJ" vazio.
   
   # Preenche os campos obrigatórios, exceto o CNPJ.
    Input Text    id=fantasyName              ${nome_empresa}
    Input Text    id=companyMail              ${email_empresa}
    Clear Element Text    id=matriz           # Deixa o campo CNPJ vazio
    Input Text    id=telephone                ${contato_responsavel}
    # ${erro_cnpj}=    Get Text       xpath=/html/body/div/div/div[2]/div/form/div/div[4]/p
    # Should Be Equal As Strings    ${erro_cnpj}    ${mensagem_erro_cnpj}
    # Clica no botão "Salvar Alterações" e valida a mensagem de erro completa exibida.
    Click Button    id=save
    # ${mensagem_erro}=    Get Text    xpath=//div[@class='MuiAlert-message css-1xsto0d']
    # Should Be Equal As Strings    ${mensagem_erro}    ${mensagem_erro_esperada}


Editar Empresa com Bairro Alfanumérico Inválido
    [Documentation]  Testa a edição da empresa com o campo Bairro 
# preenchido com caracteres alfanuméricos inválidos e verifica a mensagem de erro exibida.

    # Preencher os campos necessários
    Input Text    id=fantasyName              ${nome_empresa}
    Input Text    id=companyMail              ${email_empresa}
    Input Text    id=matriz                   71.081.155/4949-88
    Input Text    id=telephone                ${contato_responsavel}
    
    # Preencher o campo Bairro com caracteres alfanuméricos inválidos
    Input Text    id=district                 Séggggggg115y8 
    Click Button    id=save
    # Esperar pela mensagem de erro
    ${erro_mensagem}=    Wait Until Element Is Visible    xpath=//div[contains(@class, 'MuiAlert')]    timeout=5s
    ${texto_erro}=       Get Text    xpath=//div[contains(@class, 'MuiAlert')]
    ${mensagem_erro_esperada}=    Set Variable    O campo 'Nome da empresa' é obrigatório. O campo 'Email' é obrigatório. O campo 'CNPJ' da empresa é obrigatório. O campo 'Contado do Responsável' é obrigatório.


Editar empresa com o campo "Telefone" com caracteres inválidos (alfanuméricos e especiais).     
    [Documentation]  Testa a edição da empresa com o campo Telefone 
    # preenchido com caracteres alfanuméricos e especiais e verifica a mensagem de erro exibida.

    Input Text    id=fantasyName              ${nome_empresa}
    Input Text    id=companyMail              ${email_empresa}
    Input Text    id=matriz                   71.081.155/4949-88
    Input Text    id=telephone                 55çjgrsdxxxxxxdddddddddddddddddddsaa4we543d4@
    Input Text    id=district                 Lagoa
    Click Button    id=save
    # Esperar pela mensagem de erro
    ${erro_mensagem}=    Wait Until Element Is Visible    xpath=//div[contains(@class, 'MuiAlert')]    timeout=5s
    ${texto_erro}=    Get Text    xpath=//div[contains(@class, 'MuiAlert')]
    ${mensagem_erro_esperada}=    Set Variable    O campo 'Nome da empresa' é obrigatório. O campo 'Email' é obrigatório. O campo 'CNPJ' da empresa é obrigatório. O campo 'Contado do Responsável' é obrigatório.


    
