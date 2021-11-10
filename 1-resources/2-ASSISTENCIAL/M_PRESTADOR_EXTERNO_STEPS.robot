##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Prestador Externo
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_PRESTADOR_EXTERNO_PAGE.robot


*** Variable ***

*** Keywords ***
Clicar Botao Limpar
    Click no Item                      ${BotaoLimpar}
    Validar Elemento Pelo Titulo       Procurar

Preencher Campos 
    Preencher campo                    ${CampoNrConselho}                456789
    Preencher campo                    ${CampoNomePrestador}             PRESTADOR TESTE AUTOMACAO
    Preencher campo                    ${CampoCPF}                       35901722582
    Selecionar Item Na Lista           ${BotaoLovConselho}               CRM                               CRM
    Selecionar Item Na Lista           ${BotaoLovEspecialidade}          CLINICA GERAL                     CLINICA GERAL
    Selecionar Item Na Lista           ${BotaoLovCBO}                    MEDICO EM GERAL (CLINICO GERAL)   MEDICO EM GERAL (CLINICO GERAL)

Validar Campos Preenchidos
    Validar Elemento Pelo Titulo        456789
    Validar Elemento Pelo Titulo        PRESTADOR TESTE AUTOMACAO
    Validar Elemento Pelo Titulo        35901722582
    Validar Elemento Pelo Titulo        CRM 
    Validar Elemento Pelo Titulo        CLINICA GERAL     

### Keyword para retornar massa de dados para status inicial do teste ###
Apagar Prestador Cadastrado
    Click Elemento por titulo           Procurar    
    Preencher campo                     ${CampoCPF}                       35901722582
    Click Elemento por titulo           Executar Consulta
    Validar Campos Preenchidos
    Click Elemento por titulo           Apagar
    Clicar Botao Salvar

