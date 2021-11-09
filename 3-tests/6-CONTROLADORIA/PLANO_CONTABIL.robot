#################################################################################################################################################################
# Autor: Denner Ricardo 
# Decrição: Criação de um modelo de Plano de Contas Contábil
#################################################################################################################################################################
# Execução Exemplo:
# chrome:   robot -v browser:chrome -t "SCR6CPLANOCONTABIL-001:Caixa Importar movimentação" -d ./5-results/SCR6CPLANOCONTABIL-001 "3-tests/6-CONTROLADORIA/PLANO_CONTABIL.robot"
# firefox:  robot -v browser:firefox -t "SCR6CPLANOCONTABIL-001:Caixa Importar movimentação" -d ./5-results/SCR6CPLANOCONTABIL-001 "3-tests/6-CONTROLADORIA/PLANO_CONTABIL.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SCR6CPLANOCONTABIL-001 "3-tests/6-CONTROLADORIA/PLANO_CONTABIL.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR6CPLANOCONTABIL-001 "3-tests/6-CONTROLADORIA/PLANO_CONTABIL.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/6-CONTROLADORIA/PLANO_CONTABIL_STEPS.robot
Resource            ../../1-resources/auxiliar/Genericos.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão

### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            PLANO_CONTABIL
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6CPLANOCONTABIL-001:Cadastrar Plano Contábil
# robot -v browser:chrome -t "SCR6CPLANOCONTABIL-001:Cadastrar Plano Contábil" -d ./5-results/SCR6CPLANOCONTABIL-001 "3-tests/6-CONTROLADORIA/PLANO_CONTABIL.robot"
# robot -v browser:firefox -t "SCR6CPLANOCONTABIL-001:Cadastrar Plano Contábil" -d ./5-results/SCR6CPLANOCONTABIL-001 "3-tests/6-CONTROLADORIA/PLANO_CONTABIL.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6CPLANOCONTABIL-001"
    Acessar "PLANO_CONTABIL"@nprint @las
    Preecher Planos |${dados}[codigo]|, |${dados}[descricao]|, |${dados}[mascara]|, |${dados}[tipo]|
    Preecher Empresas Associadas |${dados}[codigoDaEmpresa]|
    Clicar no botão Salvar do menu
    Valida Mensagem        ${mensagemPlanoContabil}        Registros gravados com sucesso (2 registros gravados).