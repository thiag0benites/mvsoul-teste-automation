#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela c_consulta_conta_p321
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/C_CONSULTA_P321 "3-tests/5-FATURAMENTO/C_CONSULTA_P321.robot"
# firefox: robot -v browser:firefox -d ./5-results/C_CONSULTA_P321 "3-tests/5-FATURAMENTO/C_CONSULTA_P321.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_USUARIO "3-tests/5-FATURAMENTO/C_CONSULTA_P321.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_USUARIO "3-tests/5-FATURAMENTO/C_CONSULTA_P321.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource        ../../1-resources/5-FATURAMENTO/C_CONSULTA_CONTA_P321_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            c_consulta_conta_p321
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5CCONSULTACONTAP321-001:Fluxo Principal
# robot -v browser:chrome -t "SCR5CCONSULTACONTAP321-001:Fluxo Principal" -d ./5-results/SCR5CCONSULTACONTAP321-001 "3-tests/5-FATURAMENTO/C_CONSULTA_CONTA_P321.robot"
# robot -v browser:firefox -t "SCR5CCONSULTACONTAP321-001:Fluxo Principal" -d ./5-results/SCR5CCONSULTACONTAP321-001 "3-tests/5-FATURAMENTO/C_CONSULTA_CONTA_P321.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5CCONSULTACONTAP321-001"
    Acessar a tela "Faturamento>Faturamento de Internação SUS (AIH)>Consultas>Contas"@nprint @las
    Preencher o campo Prontuario |${dados}[prontuario]|
    Clicar no botao[Pesquisar]
    Captura codigo|${suite}|${dados}[id]|