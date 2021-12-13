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

Preencher Campos |${Conselho}| |${NomePrestador}| |${CPF}| |${NomeConselho}| |${Especialidade}| |${CBO}|
    Preencher campo                    ${CampoNrConselho}                ${Conselho}
    Preencher campo                    ${CampoNomePrestador}             ${NomePrestador}
    Preencher campo                    ${CampoCPF}                       ${CPF}
    Selecionar Item Na Lista           ${BotaoLovConselho}               ${NomeConselho}            ${NomeConselho}
    Selecionar Item Na Lista           ${BotaoLovEspecialidade}          ${Especialidade}           ${Especialidade}          
    Selecionar Item Na Lista           ${BotaoLovCBO}                    ${CBO}                     ${CBO}

Validar Campos Preenchidos |${Conselho}| |${NomePrestador}| |${CPF}| |${NomeConselho}| |${Especialidade}| 
    Validar Elemento Pelo Titulo        ${Conselho}
    Validar Elemento Pelo Titulo        ${NomePrestador}
    Validar Elemento Pelo Titulo        ${CPF}
    Validar Elemento Pelo Titulo        ${NomeConselho}
    Validar Elemento Pelo Titulo        ${Especialidade}    

### Keyword para retornar massa de dados para status inicial do teste ###
Apagar Prestador Cadastrado |${Conselho}| |${NomePrestador}| |${CPF}| |${NomeConselho}| |${Especialidade}| 
    Click Elemento por titulo           Procurar    
    Preencher campo                     ${CampoCPF}                       ${CPF}
    Click Elemento por titulo           Executar Consulta
    Validar Campos Preenchidos |${Conselho}| |${NomePrestador}| |${CPF}| |${NomeConselho}| |${Especialidade}| 
    Click Elemento por titulo           Apagar
    Clicar Botao Salvar

