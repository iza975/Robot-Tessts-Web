** Variables ***
${CADASTROS_BUTTON}                    //*[@id="Cadastros"]/span         # Botao de cadastroda interface  CADASTRO
${USUARIOS_BUTTON}                     //*[@id="Usuários"]/span          # botao de usuarios interface CADASTRO
${EDITAR_CADASTRO_BUTTON}              id=edit                           # botao cadastro interface CADASTRO
${FULL_NAME_FIELD}                     id=fullName                       # ID do campo de nome completo
${EMAIL_FIELD}                         id=mail            # ID do campo de e-mail
${SAVE_BUTTON}                         id=save                           # ID do botão de salvar
${NEW_FULL_NAME}                       Nome Completo Cadastrado          # NoVO nome inserido no Cadastro
${EMAIL_SEM_DOMINIO}                   sysadmin@        # EMAIL SEM DONINIO
${EMAIL_ESPACO}                        sysadmintestetd hvsvsd    
${urlBase}                             https://automacao.qacoders.dev.br/login   #Url
${EMAIL_LOGIN}                         id=email                         # define a variavel email login
${EMAIL_VALIDO}                        sysadmin@qacoders.com               # define a variavel senha login
${SENHA_VALIDA}                        1234@Test                       # define a variavel botao entrar
# Mensagem de erro para nome vazio
${ERROR_MENSAGEM_EMAIL_VAZIO}          O campo email é obrigatório
${NOME_UNICO}                          MARIA    # define valor da variavel com nome simples
${MAX_NAME_LENGTH}            100
${EXCEEDS_NAME_LENGTH}        101
${ERROR_CLASS}                         class=css-bbipig    
# ${ERROR_MENSAGEM_EMAIL_VAZIO}          class=css-bbipig    O campo email é obrigatório
${ERROR_MENSAGEM_EMAIL_COM_ESPACOS}    O e-mail não pode conter espaços.
${SUCESSO_MENSAGEM}                    E-mail editado com sucesso."
${SENHA_LOGIN}                         id=password          
# ${ERROR_MENSAGEM_NOME_VAZIO}  O campo nome completo é obrigatório
${NAME_WITH_NUMBERS}          "Henrique123"  # nome com numeros
${NOME_VALIDO}           Jaqueline Souza 
${NEW_EMAIL}
${BUTOO_LOGOUT}       class=css-18le3pj
${urlBase}            https://automacao.qacoders.dev.br/login
${EMAIL_LOGIN}        id=email  # campo email da tela de login
${EMAIL_VALIDO}       sysadmin@qacoders.com   #email valido da tela de login
${SENHA_LOGIN}        id=password   #campo senha da tela de login
${SENHA_VALIDA}       1234@Test     # senha valida da tela de login
${BOTAO_IMPUT}        id=login   # botao entra da tela de login
${BUTOO_LOGOUT}        class=css-1nvbq2d # botao sair da tela  cadastro               
${CADASTROS_BUTTON}     //*[@id="Cadastros"]/span              
${USUARIOS_BUTTON}      //*[@id="Usuários"]/span      
${EDITAR_CADASTRO_BUTTON}              id=edit    
${SAVE_BUTTON}                         id=save               
${ERROR_MENSAGEM_EMAIL_INVALIDO}    xpath=//p[contains(text(), 'Email Inválido')] 
${NOME_COMPLETO_FIEEL}
${EXPECTED_PREVIOUS_URL}    https://automacao.qacoders.dev.br/user?671b1a8cb8d32c9e733ea9f3 
${ERROR_MENSAGEM_NOME_VAZIO}    O campo nome completo é obrigatório  # Mensagem de erro para nome vazio
${COMPANY_CNPJ}      id=matriz 
${nome_empresa}      Nome da Empresa Exemplo    id=companyName
${email_empresa}      exemplo@empresa.com         id=companyMail
${contato_responsavel}     (11) 91234-5678        id=telephone
${mensagem_erro_esperada}    O campo 'Nome da empresa' é obrigatório.O campo 'Email' é obrigatório.O campo 'CNPJ' da empresa é obrigatório.O campo 'Contado do Responsável' é obrigatório.
${COMPANY_BUTTON}      //*[@id="Empresa"]/span
${mensagem_erro_cnpj}     class=css-bbipig O campo CNPJ é obrigatório 
${COMPANY_CNPJ}      id=matriz 
${nome_empresa}      Nome da Empresa Exemplo    id=companyName
${email_empresa}     exemplo@empresa.com         id=companyMail
${contato_responsavel}   (11) 91234-5678        id=telephone
${mensagem_erro_esperada}  O campo 'Nome da empresa' é obrigatório.O campo 'Email' é obrigatório.O campo 'CNPJ' da empresa é obrigatório.O campo 'Contado do Responsável' é obrigatório.
${COMPANY_BUTTON}    //*[@id="Empresa"]/span
${mensagem_erro_cnpj}     O campo CNPJ é obrigatório    /html/body/div/div/div[2]/div/form/div/div[4]/p
${pj} =    Get Text    xpath=//div[contains(@class, 'MuiAlert')]
${bairro_empresa}       id=id=district 
${urlBase}            https://automacao.qacoders.dev.br
${EMAIL_LOGIN}        id=email  # campo email da tela de login
${EMAIL_VALIDO}       sysadmin@qacoders.com   #email valido da tela de login
${SENHA_LOGIN}        id=password   #campo senha da tela de login
${SENHA_VALIDA}       1234@Test     # senha valida da tela de login
${BOTAO_IMPUT}        id=login   # botao entra da tela de login
${BUTOO_LOGOUT}       class=css-1nvbq2d  # botao sair da tela  cadastro               
${CADASTROS_BUTTON}     //*[@id="Cadastros"]/span              
${USUARIOS_BUTTON}      //*[@id="Usuários"]/span   
${EDITAR_CADASTRO_BUTTON}              id=edit    
${SAVE_BUTTON}                         id=save               
 
*** Variables ***

# Campos do Formulário
${FULL_NAME_FIELD}             id=fullName                      # Campo de Nome Completo
${SURNAME_FIELD}               locator_do_campo_sobrenome      # Insira o locator correto para o campo sobrenome
${EMAIL_FIELD}                 id=mail                          # Campo de E-mail
${SAVE_BUTTON}                 id=saveButton                    # Botão Salvar Alterações

# Mensagens de Erro
${ERROR_MESSAGE_NAME_MISSING}  "O campo nome completo é obrigatório."  # Mensagem quando o campo nome está vazio
${ERROR_MESSAGE_NAME_TOO_LONG}  "O nome não pode ter mais de 100 caracteres."
${ERROR_MESSAGE_NAME_INVALID}    "O nome não pode conter números."
${ERROR_MESSAGE_SURNAME_MISSING}  O sobrenome é obrigatório.

# Dados Válidos e Limitações
${VALID_EMAIL}                 valid_email@exemplo.com          # E-mail válido para os testes
${MAX_NAME_LENGTH}             100                               # Limite máximo de caracteres para o nome
${EXCEEDS_NAME_LENGTH}         ${MAX_NAME_LENGTH}+1              # Nome com mais de 100 caracteres
${NAME_WITH_NUMBERS}           "Nome123"                         # Nome contendo números
${EMPTY_SURNAME}               ""                                 # Sobrenome vazio
${empty_value} =    ''
                  
