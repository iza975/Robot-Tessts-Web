
*** Settings ***
Library   SeleniumLibrary
Library   String


*** Keywords ***
# Abre o navegador e navega até a URL base
Abrir o navegador e acessar página inicial
    Open Browser    browser=chrome
    Maximize Browser Window   
    Go To    url=${urlBase}

# Realiza login com e-mail e senha válidos
Realizar Login
    Wait Until Element Is Visible    ${EMAIL_LOGIN}
    Input Text    ${EMAIL_LOGIN}    ${EMAIL_VALIDO}
    Wait Until Element Is Visible    ${SENHA_LOGIN}
    Input Password    ${SENHA_LOGIN}    ${SENHA_VALIDA}
    Wait Until Element Is Visible    ${BOTAO_IMPUT}
    Click Button    ${BOTAO_IMPUT}

# Acessa a tela de cadastro de usuários após o login
Acessar Tela de Cadastro de Empresa
    Wait Until Element Is Visible    ${CADASTROS_BUTTON}    timeout=120
    Click Element    ${CADASTROS_BUTTON}
    Click Element    ${COMPANY_BUTTON}
    Wait Until Element Is Visible    id=edit    timeout=30
    Click Element    id=edit
Fazer Login de usuario e acessar a tela de cadastro
    Abrir o navegador e acessar página inicial
    Realizar Login
    Acessar Tela de Cadastro de Empresa
