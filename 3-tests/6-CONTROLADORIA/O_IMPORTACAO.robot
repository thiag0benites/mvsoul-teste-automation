#################################################################################################################################################################
# Autor: José Neto
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:firefox -d ./5-results/O_IMPORTACAO_STEPS "3-tests\6 - CONTROLADORIA\O_IMPORTACAO.robot"
# chrome:         robot -v browser:chrome -d ./5-results/O_IMPORTACAO_STEPS "3-tests\6 - CONTROLADORIA\O_IMPORTACAO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/O_IMPORTACAO_STEPS "3-tests\6 - CONTROLADORIA\O_IMPORTACAO.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/O_IMPORTACAO_STEPS "3-tests\6 - CONTROLADORIA\O_IMPORTACAO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/6-CONTROLADORIA/O_IMPORTACAO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          o_importacao
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-8560 : Geral - Importar Plano Contábil
# robot -v browser:chrome -t "SMF-8560 : Geral - Importar Plano Contábil " -d ./5-results/SMF-8560 "3-tests/6-CONTROLADORIA/O_IMPORTACAO.robot"
# robot -v browser:firefox -t "SMF-8560 : Geral - Importar Plano Contábil" -d ./5-results/SMF-8560 "3-tests/6-CONTROLADORIA/O_IMPORTACAO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-8560"
    #Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Financeiro>Contas a Receber>Recebimentos>Recebimentos de Convênio"@nprint @nao
    Acessa a Tela Pela Busca |O_IMPORTACAO| |Geral| @nao
    Validar Acesso a Tela |Informações para a importação|
SMF-8561 : Geral - Importar Geral
    # robot -v browser:chrome -t "SMF-8561 : Geral - Importar Geral " -d ./5-results/SMF-8561 "3-tests/6-CONTROLADORIA/O_IMPORTACAO.robot"
    # robot -v browser:firefox -t "SMF-8561 : Geral - Importar Geral " -d ./5-results/SMF-8561 "3-tests/6-CONTROLADORIA/O_IMPORTACAO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-8561"
    #Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Financeiro>Contas a Receber>Recebimentos>Recebimentos de Convênio"@nprint @nao
    Acessa a Tela Pela Busca |O_IMPORTACAO||Geral| @nao
    Validar Acesso a Tela |Informações para a importação|