#################################################################################################################################################################
# Autor: Denner Ricardo 
# Decrição: Arquivo de Remessa O_ARQUIVO_REMESSA
#################################################################################################################################################################
# Execução Exemplo:
# chrome:   robot -v browser:chrome -t "SCR6COARQUIVOREMESSA-001:Arquivo de Remessa" -d ./5-results/SCR6COARQUIVOREMESSA-001 "3-tests/6-CONTROLADORIA/O_ARQUIVO_REMESSA.robot"
# firefox:  robot -v browser:firefox -t "SCR6COARQUIVOREMESSA-001:Arquivo de Remessa" -d ./5-results/SCR6COARQUIVOREMESSA-001 "3-tests/6-CONTROLADORIA/O_ARQUIVO_REMESSA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SCR6COARQUIVOREMESSA-001 "3-tests/6-CONTROLADORIA/O_ARQUIVO_REMESSA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR6COARQUIVOREMESSA-001 "3-tests/6-CONTROLADORIA/O_ARQUIVO_REMESSA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/6-CONTROLADORIA/O_ARQUIVO_REMESSA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessao
# Suite Teardown    Encerra sessão

### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            O_ARQUIVO_REMESSA
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6COARQUIVOREMESSA-001:Arquivo de Remessa
# robot -v browser:chrome -t "SCR6COARQUIVOREMESSA-001:Arquivo de Remessa" -d ./5-results/SCR6COARQUIVOREMESSA-001 "3-tests/6-CONTROLADORIA/O_ARQUIVO_REMESSA.robot"
# robot -v browser:firefox -t "SCR6COARQUIVOREMESSA-001:Arquivo de Remessa" -d ./5-results/SCR6COARQUIVOREMESSA-001 "3-tests/6-CONTROLADORIA/O_ARQUIVO_REMESSA.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6COARQUIVOREMESSA-001"
    Acessar a tela "Controladoria>Intercâmbio Eletrônico de Arquivos>Arquivos>Bancos>Remessa>Arquivos de Pagamentos e Cobranças"@nprint @las
    Validar Acesso a Tela |${dados}[nomeTela]| 
    Preencher codigo e Validar |${dados}[codigo]|
    Processar e validar mensagem |${dados}[mensagemSucesso]|