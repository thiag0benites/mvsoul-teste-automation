#################################################################################################################################################################
# Autor: Flavio Silva
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_PLACON_STEPS "3-tests\6 - CONTROLADORIA\M_PLACON.robot"
# chrome:         robot -v browser:firefox -d ./5-results/M_PLACON_STEPS "3-tests\6 - CONTROLADORIA\M_PLACON.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_PLACON_STEPS "3-tests\6 - CONTROLADORIA\M_PLACON.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/M_PLACON_STEPS "3-tests\6 - CONTROLADORIA\M_PLACON.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes

Resource            ../../1-resources/6-CONTROLADORIA/M_PLACON_STEPS.robot


### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao


*** Variable ***
# # Suite registrada no gerenciador de dados
#${suite}          m_lote_pagamento
# # Recebe dados do gerenciador
#${dados}

*** Test Case ***
SMF-8287 : Cadastrar Conta de Movimentação ( M_PLACON)
# robot -v browser:chrome -t "SMF-8287 : Cadastrar Conta de Movimentação ( M_PLACON)" -d ./5-results/SMF-8287 "3-tests/6-CONTROLADORIA/M_PLACON.robot"
# robot -v browser:firefox -t "SMF-8287 : Cadastrar Conta de Movimentação ( M_PLACON)" -d ./5-results/SMF-8287 "3-tests/6-CONTROLADORIA/M_PLACON.robot"
    Acessa a Tela Pela Busca |M_PLACON||Conta de Movimentação| @las
    Informar o numero no campo codigo da empresa
    No grid Contas clicar no campo codigo 
    Clicar Descricao da Conta
    Clicar no campo Natureza
    Clicar no campo Grupo da Conta 
    Indicar no campo Exporta ANS 
    Clicar no botao Salvar