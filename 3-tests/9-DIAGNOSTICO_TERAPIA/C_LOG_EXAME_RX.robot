#################################################################################################################################################################
# Autor: Gabriel Passos
# Decrição: Testes da tela C_LOG_EXAME_RX - Consulta de Log de Movimentações de Exames 
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/9-DIAGNOSTICO_TERAPIA "3-tests\9-DIAGNOSTICO_TERAPIA\C_LOG_EXAME_RX.robot"
# firefox: robot -v browser:firefox -d ./5-results/9-DIAGNOSTICO_TERAPIA "3-tests\9-DIAGNOSTICO_TERAPIA\C_LOG_EXAME_RX.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/9-DIAGNOSTICO_TERAPIA "3-tests\9-DIAGNOSTICO_TERAPIA\C_LOG_EXAME_RX.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/9-DIAGNOSTICO_TERAPIA "3-tests\9-DIAGNOSTICO_TERAPIA\C_LOG_EXAME_RX.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource    ../../1-resources/9-DIAGNOSTICO_TERAPIA/C_LOG_EXAME_RX_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
#Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}           c_log_exame_rx
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-5696:Fluxo Principal
# robot -v browser:chrome -t "SMF-5696:Fluxo Principal" -d ./5-results/SMF-5696 "3-tests/9-DIAGNOSTICO_TERAPIA/C_LOG_EXAME_RX.robot"
# robot -v browser:firefox -t "SMF-5696:Fluxo Principal" -d ./5-results/SMF-5696 "3-tests/9-DIAGNOSTICO_TERAPIA/C_LOG_EXAME_RX.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5696"
    Acessar a tela "Diagnostico e Terapia>Laboratorio de Analises Clinicas>Consultas>Log de Movimentações de Exames"@nprint @nlas
    Pesquisar o numero do pedido de exame |${dados}[numPedidoExame]|
    Validar logs de movimentacoes de exame |${suite}|${dados}[id]|