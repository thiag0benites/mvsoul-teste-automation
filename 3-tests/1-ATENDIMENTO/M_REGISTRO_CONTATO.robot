#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Solicitação de Transferencia de Leito
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_REGISTRO_CONTATO.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_REGISTRO_CONTATO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_REGISTRO_CONTATO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_REGISTRO_CONTATO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/M_REGISTRO_CONTATO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_REGISTRO_CONTATO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMREGISTROCONTATO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMREGISTROCONTATO-001:Fluxo Principal" -d ./5-results/SCR1AMREGISTROCONTATO-001 "3-tests/1-ATENDIMENTO/M_REGISTRO_CONTATO.robot"
# robot -v browser:firefox -t "SCR1AMREGISTROCONTATO-001:Fluxo Principal" -d ./5-results/SCR1AMREGISTROCONTATO-001 "3-tests/1-ATENDIMENTO/M_REGISTRO_CONTATO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMREGISTROCONTATO-001"
    Acessa a Tela Pela Busca |M_RECEPCAO_TURMA||Recepção de Turmas| @las
    Incluir Novo Registro Apontando a Tela do Teste |${dados}[Turma]|
    Validar Acesso a Tela |Registro de Contatos|
    Adicionar Novo Contato |${dados}[Assunto]| |${dados}[Detalhamento]|
    Salvar e Validar |${dados}[MsgSalva]|