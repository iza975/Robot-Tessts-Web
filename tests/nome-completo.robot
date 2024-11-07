# CASO DE TESTES deve incluir palavras-chave específicas para os testes relacionados ao campo "Nome Completo". Esse arquivo pode conter validações e ações que são exclu
# sivas para o cadastro e edição do nome completo do usuário
*** Settings ***
     # Importa variáveis globais

Library    SeleniumLibrary     # ou outra biblioteca necessária
Library    String
Resource    ../resources/keywords/nome-completo-keywords.robot   # Importa as keywords relacionadas ao loginResource    ../resources/variables/variables.robot                  # Importa variáveis globais
Resource    ../resources/variables/variables.robot
Resource   ../resources/keywords/login-cadastrokeywords.robot
Resource  
*** Test Cases ***
 Editar Nome 
    [Setup]    Fazer Login de usuario e acessar a tela de cadastro
    Editar Nome Completo Vazio 
    Editar Nome Completo Inválido
    Editar Nome Completo Válido
    
     