#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Consulta de Exames Solicitados
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_EXA_SOL_LAB.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_EXA_SOL_LAB.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_EXA_SOL_LAB.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_EXA_SOL_LAB.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/C_EXA_SOL_LAB_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            c_exa_sol_lab
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2ACEXASOLLAB-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2ACEXASOLLAB-001:Fluxo Principal" -d ./5-results/SCR2ACEXASOLLAB-001 "3-tests/2-ASSISTENCIAL/C_EXA_SOL_LAB.robot"
# robot -v browser:firefox -t "SCR2ACEXASOLLAB-001:Fluxo Principal" -d ./5-results/SCR2ACEXASOLLAB-001 "3-tests/2-ASSISTENCIAL/C_EXA_SOL_LAB.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2ACEXASOLLAB-001"
    Acessar a tela "Diagnostico e Terapia>Laboratorio de Analises Clinicas>Consultas>Exames Solicitados"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Pesquisar Solicitacao de Exames |${dados}[Data]|
    Validar Consulta Realizada |${dados}[SetorSolic]| |${dados}[Prestador]| |${dados}[Paciente]| |${dados}[Exame1]| |${dados}[Exame2]| |${dados}[Pedido1]| |${dados}[Pedido2]|