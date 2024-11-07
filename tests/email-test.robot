


*** Settings ***

Library    SeleniumLibrary     # ou outra biblioteca necessária
Library    String   

Resource    ../resources/variables/variables.robot                  # Importa variáveis globais
Resource    ../resources/keywords/email-keywords.robot
Resource    ../resources/keywords/login-cadastrokeywords.robot

          # Importa variáveis globais

*** Test Cases ***
Cenario de Teste: Editar Email
    [Setup]    Fazer Login de usuario e acessar a tela de cadastro
    Editar E-mail Vazio
    Editar E-mail Inválido sem domínio
    Editar E-mail Com Espaços
    Editar E-mail Válido


    
    
   
