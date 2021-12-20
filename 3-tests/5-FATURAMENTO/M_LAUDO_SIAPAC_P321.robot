#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela M_LAUDO_SIAPAC_P321
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_LAUDO_SIAPAC_P321 "3-tests/5-FATURAMENTO/M_LAUDO_SIAPAC_P321.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_LAUDO_SIAPAC_P321 "3-tests/5-FATURAMENTO/M_LAUDO_SIAPAC_P321.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_LAUDO_SIAPAC_P321 "3-tests/5-FATURAMENTO/M_LAUDO_SIAPAC_P321.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_LAUDO_SIAPAC_P321 "3-tests/5-FATURAMENTO/M_LAUDO_SIAPAC_P321.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/5-FATURAMENTO/M_LAUDO_SIAPAC_P321_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_LAUDO_SIAPAC_P321
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5MLAUDOSIAPACP321-001:Fluxo Principal
# robot -v browser:chrome -t "SCR5MLAUDOSIAPACP321-001:Fluxo Principal" -d ./5-results/SCR5MLAUDOSIAPACP321-001 "3-tests/5-FATURAMENTO/M_LAUDO_SIAPAC_P321.robot"
# robot -v browser:firefox -t "SCR5MLAUDOSIAPACP321-001:Fluxo Principal" -d ./5-results/SCR5MLAUDOSIAPACP321-001 "3-tests/5-FATURAMENTO/M_LAUDO_SIAPAC_P321.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5MLAUDOSIAPACP321-001"
    Acessar a tela "Faturamento>Faturamento Ambulatorial SUS (BPA e APAC)>Lançamentos>APAC>Laudos Médicos Para Emissão de APAC"@nprint @las
    Preencher campo Competencia|${dados}[competencia]|, Prontuario|${dados}[prontuario]|, Tipo Tratamento|${dados}[tpTratamento]|, Data solicitacao|${dados}[dtCirurgia]|, Prestador|${dados}[prestador]|, Estabelecimento|${dados}[estabelecimento]|, Data Autorizacao|${dados}[dtCirurgia]|, Origem|${dados}[origem]|, Procedimento principal|${dados}[procPrincipal]|, Serv SUS|${dados}[servSus]|, Cid|${dados}[cid]|, Cid Secundario|${dados}[cidSec]|, Observacoes|${dados}[observacoes]|
    Clicar no botao[Salvar]
    Preencher campo Nr AIH|${dados}[nrAIH]|, IMC paciente|${dados}[IMC]|, Perda de peso|${dados}[perdaPeso]|, Kg Perdido Pós|${dados}[klPerdido]|, Data cirurgia|${dados}[dtCirurgia]|
    Selecionar Checkbox relacionados
    Clicar no botao[Salvar2]
    Captura codigo|${suite}|${dados}[id]|