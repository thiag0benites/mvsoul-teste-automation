#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Versão
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_FOREXA.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_FOREXA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_FOREXA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_FOREXA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/2-ASSISTENCIAL/M_FOREXA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_forexa
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMFOREXA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMFOREXA-001:Fluxo Principal" -d ./5-results/SCR2AMFOREXA-001 "3-tests/2-ASSISTENCIAL/M_FOREXA.robot"
# robot -v browser:firefox -t "SCR2AMFOREXA-001:Fluxo Principal" -d ./5-results/SCR2AMFOREXA-001 "3-tests/2-ASSISTENCIAL/M_FOREXA.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMFOREXA-001"
    Acessa a Tela Pela Busca |M_FOREXA||Laudos (Corpo do Exame)| @las
    #Acessar a tela "Diagnóstico e Terapia>Laboratório de Análises Clínicas>Formatação>Laudos (Corpo do Exame)"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Pesquisar Versoes de Laudos Cadastrados |${dados}[VersaoExame]| |${dados}[MsgConsulta]|
    Criar Nova Versao de Laudo |${dados}[NovaVersao]| |${dados}[Exame]| |${dados}[Material]|
    Clicar Botao Salvar |${dados}[MensagemSucesso]|
    # Retornar massa de dados para status inicial
    Excluir Versao Criada
    Clicar Botao Salvar |${dados}[MensagemSucesso]|
