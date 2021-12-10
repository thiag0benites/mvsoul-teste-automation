#################################################################################################################################################################
# Autor: Denner Ricardo 
# Decrição: Este caso de teste tem como objetivo, realizar a exportação da DMED de acordo com os dados informados no recebimento da conta ou na Nota Fiscal particular.
#################################################################################################################################################################
# Execução Exemplo:
# chrome:   robot -v browser:chrome -t "SCR6CO_GERA_DMED-001:Caixa Importar movimentação" -d ./5-results/SCR6CO_GERA_DMED-001 "3-tests/6-CONTROLADORIA/O_GERA_DMED.robot"
# firefox:  robot -v browser:firefox -t "SCR6CO_GERA_DMED-001:Caixa Importar movimentação" -d ./5-results/SCR6CO_GERA_DMED-001 "3-tests/6-CONTROLADORIA/O_GERA_DMED.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SCR6CO_GERA_DMED-001 "3-tests/6-CONTROLADORIA/O_GERA_DMED.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR6CO_GERA_DMED-001 "3-tests/6-CONTROLADORIA/O_GERA_DMED.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/6-CONTROLADORIA/O_GERA_DMED_STEPS.robot
# Resource            ../../Config.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessao
# Suite Teardown    Encerra sessão

### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            O_GERA_DMED
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6COGERADMED-001:Gerar Arquivo DMED por Recebimento
# robot -v browser:chrome -t "SCR6COGERADMED-001:Gerar Arquivo DMED por Recebimento" -d ./5-results/SCR6COGERADMED-001 "3-tests/6-CONTROLADORIA/O_GERA_DMED.robot"
# robot -v browser:firefox -t "SCR6COGERADMED-001:Gerar Arquivo DMED por Recebimento" -d ./5-results/SCR6COGERADMED-001 "3-tests/6-CONTROLADORIA/O_GERA_DMED.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6COGERADMED-001"
    Acessar a tela "Controladoria>Fiscal>Geração>DMED>Geração de arquivo da DMED"@nprint @las
    Validar Acesso a Tela |${dados}[nomeTela]| 
    Informar |${dados}[anoBase]|, Selecionar |${dados}[geraPor]| e Validar Campos 
    Informar e Validar |${dados}[empresa]|
    Preencher |${dados}[nomeResponsavel]|, CPF |${dados}[cpf]| e telefone |${dados}[ddd]| |${dados}[telefone]|
    Validar Campos |${dados}[nomeResponsavel]|, CPF |${dados}[cpf]| e telefone |${dados}[ddd]| |${dados}[telefone]|
    Exportar e validar mensagem |${dados}[mensagemSucesso]|
   