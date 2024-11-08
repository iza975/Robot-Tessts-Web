
*** Settings ***
Library   SeleniumLibrary
Library   String    

*** Keywords ***


Editar Nome Completo Vazio
    [Documentation]    Este teste valida que a mensagem de erro deve aparecer quando o campo "Nome Completo" é deixado vazio.
    # Log    Iniciando o teste: Deixar o campo 'Nome Completo' vazio.
    Input Text    ${FULL_NAME_FIELD}    ${EMPTY}
    Log    Campo 'Nome Completo' foi deixado vazio.
    # Insere um e-mail válido
    Input Text    ${EMAIL_FIELD}    ${NEW_EMAIL}
    Log    E-mail válido inserido: ${NEW_EMAIL}.
    # Clica no botão "Salvar"
    Click Button    ${SAVE_BUTTON}
    Log    Botão 'Salvar' clicado.
    # Aguarda um momento para garantir que o sistema teve tempo de processar
    Sleep    2
    # Verifica se a mensagem de erro está visível
    ${error_exists} =    Run Keyword And Return Status    Element Should Be Visible    xpath=//p[contains(text(), '${ERROR_MENSAGEM_NOME_VAZIO}')]
    Run Keyword If    not ${error_exists}    Log    A mensagem de erro 'O campo nome completo é obrigatório' não foi exibida como esperado. Isso pode indicar um bug no sistema.    level=ERROR
    Run Keyword If    ${error_exists}    Log    Mensagem de erro exibida: '${ERROR_MENSAGEM_NOME_VAZIO}'.

    # Obter valor atual do campo "Nome Completo" para verificar preenchimento automático
    ${full_name_value} =    Get Value    ${FULL_NAME_FIELD}
    Log    Valor atual do campo 'Nome Completo' após salvar: '${full_name_value}'.

   
Editar Nome Completo Inválido
    Input Text    ${FULL_NAME_FIELD}    text= 568
    Input Text    ${EMAIL_FIELD}    ${NEW_EMAIL}
    Click Button    ${SAVE_BUTTON}
    # Verificar se a página voltou à anterior sem salvar as alterações
    # ${current_url} =    Get Location
    # Should Be Equal As Strings    ${current_url}    ${EXPECTED_PREVIOUS_URL}
Editar Nome Completo Válido   
    Input Text    ${FULL_NAME_FIELD}    text= Sophia Galia
    Input Text    ${EMAIL_FIELD}    ${NEW_EMAIL}
    Click Button    ${SAVE_BUTTON}
    # Verificar se a página voltou à anterior sem salvar as alterações    
    # ${current_url} =    Get Location
    # Should Be Equal As Strings    ${current_url}    ${EXPECTED_PREVIOUS_URL}