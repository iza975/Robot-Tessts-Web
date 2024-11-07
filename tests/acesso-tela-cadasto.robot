
*** Settings *** 

Resource    ../resources/keywords/acesso-tela-cadastrokeywords.robot
Resource    ../resources/variables/variables.robot


Library      SeleniumLibrary
Library      String

*** Test Cases ***
Fazer Login de usuario e acessar a tela de cadastro
   Abrir o navegador e acessar página inicial
   Realizar Login
   Acessar Tela de Cadastro de Empresa
   
