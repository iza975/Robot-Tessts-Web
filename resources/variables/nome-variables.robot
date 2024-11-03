
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

