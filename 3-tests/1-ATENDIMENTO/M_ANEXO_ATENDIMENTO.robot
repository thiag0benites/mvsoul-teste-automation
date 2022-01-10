#################################################################################################################################################################
# Autor: Flavio Silva
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_ANEXO_ATENDIMENTO_STEPS "3-tests\1 - ATENDIMENTO\M_ANEXO_ATENDIMENTO.robot"
# chrome:         robot -v browser:firefox -d ./5-results/M_ANEXO_ATENDIMENTO_STEPS "3-tests\1 - ATENDIMENTO\M_ANEXO_ATENDIMENTO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_ANEXO_ATENDIMENTO_STEPS "3-tests\1 - ATENDIMENTO\M_ANEXO_ATENDIMENTO.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/M_ANEXO_ATENDIMENTO_STEPS "3-tests\1 - ATENDIMENTO\M_ANEXO_ATENDIMENTO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/1-ATENDIMENTO/M_ANEXO_ATENDIMENTO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
${suite}          m_anexo_atendimento
# # Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-10552 : Anexar documentos do paciente
# robot -v browser:chrome -t "SMF-10552 : Anexar documentos do paciente" -d ./5-results/SMF-10552 "3-tests/1-ATENDIMENTO/M_ANEXO_ATENDIMENTO.robot"
# robot -v browser:firefox -t "SMF-10552 : Anexar documentos do paciente" -d ./5-results/SMF-10552 "3-tests/1-ATENDIMENTO/M_ANEXO_ATENDIMENTO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-10552"
    Acessar a tela "Atendimento>Internação>Atendimento>Pré-Internação"@nprint @las
    Pesquisar ou cadastrar uma pre internacao para o paciente |${dados}[Codigo]|
    Clique no botao Documentos do paciente
    Clique no botao Novo documento 
    Preencher os campos e clicar no botao anexar documento |${dados}[Descricao]|
    Faz upload de um arquivo |${dados}[MsgUsuario]| 