#################################################################################################################################################################
# Autor: Marcio Nascimento
# Decrição: Teste da tela de Liberações de Financeiro
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/SCR6COIMPFINANCPROCESSO-001 "3-tests/6-CONTROLADORIA/O_IMP_FINANC_PROCESSO.robot"
# firefox: robot -v browser:firefox -d ./5-resultsSCR6COIMPFINANCPROCESSO-001 "3-tests/6-CONTROLADORIA/O_IMP_FINANC_PROCESSO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SCR6COIMPFINANCPROCESSO-001 "3-tests/6-CONTROLADORIA/O_IMP_FINANC_PROCESSO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR6COIMPFINANCPROCESSO-001 "3-tests/6-CONTROLADORIA/O_IMP_FINANC_PROCESSO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource                  ../../2-pages/6-CONTROLADORIA/O_IMP_FINANC_PROCESSO_pages.robot
Resource                  ../../1-resources/6-CONTROLADORIA/O_IMP_FINANC_PROCESSO_steps.robot
Resource                  ../../Config.robot
Resource                  ../../1-resources/auxiliar/Genericos.robot
Resource                  ../../1-resources/bd/BancoDados.robot
Resource                  ../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup               Nova sessao
# Suite Teardown            Encerra sessao

### Inicia/fecha sessão do navegador por cenario de teste
Test Setup                Nova sessao
# Test Teardown             Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}             O_IMP_FINANC_PROCESSO
# Recebe dados do gerenciador
${dados}        

*** Test Case ***
SCR6COIMPFINANCPROCESSO-001:Fluxo principal
# robot -v browser:chrome -t "SCR6COIMPFINANCPROCESSO-001:Fluxo principal" -d ./5-results/SCR6COIMPFINANCPROCESSO-001 "3-tests/6-CONTROLADORIA/O_IMP_FINANC_PROCESSO.robot"
# robot -v browser:firefox -t "SCR6COIMPFINANCPROCESSO-001:Fluxo principal" -d ./5-results/SCR6COIMPFINANCPROCESSO-001 "3-tests/6-CONTROLADORIA/O_IMP_FINANC_PROCESSO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6COIMPFINANCPROCESSO-001"
    Acessar a tela "Controladoria>Contabilidade>Liberação de Movimentações>Financeiro"@nprint @las
    # Preencher campo Período com "${dados}[DataInicial]" e "${dados}[DataFinal]"
    # Validar Pop-Pup e campos preenchidos referente ao retorno da pesquisa
