*** Settings ***

Library    SeleniumLibrary     # ou outra biblioteca necessária
Library    String

Resource    ../resources/variables/variables.robot                  # Importa variáveis globais
Resource    ../resources/keywords/company-keywords.robot
Resource    ../resources/keywords/acesso-tela-cadastrokeywords.robot


*** Test Cases ***
Editar company
    [Setup]    Fazer Login de usuario e acessar a tela de cadastro
    Editar empresa com o campo "CNPJ" vazio.
    Editar Empresa com Bairro Alfanumérico Inválido
    Editar empresa com o campo "Telefone" com caracteres inválidos (alfanuméricos e especiais).     