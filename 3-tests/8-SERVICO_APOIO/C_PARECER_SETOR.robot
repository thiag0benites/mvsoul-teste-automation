#################################################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_FICHA_INFECCAO-001 "3-tests\8-SERVICO_APOIO/C_PARECER_SETOR.robot"
# firefox:        robot -v browser:firefox -d ./5-results/M_FICHA_INFECCAO-001 "3-tests\8-SERVICO_APOIO/C_PARECER_SETOR.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\8-SERVICO_APOIO/C_PARECER_SETOR.robot"
# firefox:        robot -v browser:headlessfirefox -d ./5-results/C_LISTAGEM_CONFERENCIA_RPA_STEPS "3-tests\8-SERVICO_APOIO/C_PARECER_SETOR.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/8-SERVICO_APOIO/C_PARECER_SETOR_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
 # Suite registrada no gerenciador de dados
${suite}          c_parecer_setor
 # Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SCPARECERSETOR-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SCPARECERSETOR-001:Fluxo Principal" -d ./5-results/SCR8SCPARECERSETOR-001 "3-tests/8-SERVICO_APOIO/C_PARECER_SETOR.robot"
# robot -v browser:firefox -t "SCR8SCPARECERSETOR-001:Fluxo Principal" -d ./5-results/SCR8SCPARECERSETOR-001 "3-tests/8-SERVICO_APOIO/C_PARECER_SETOR.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SCPARECERSETOR-001"
    Acessar a tela "Serviços de Apoio>Serviço Atendimento Cliente>Atendimento>Abertura de Chamados"@nprint @nao
    Abertura de Chamados |${dados}[Origem]||${dados}[Setor]||${dados}[NomePaciente]||${dados}[TipoChamado]||${dados}[NivelChamado]||${dados}[MeioChamado]||${dados}[Paciente]||${dados}[DescResu]||${dados}[CodigoSetores]||${dados}[Codigo2]||${dados}[CodigoMotivos]||${dados}[UsuarioMotivos]||${dados}[CodDest]||${dados}[MsgSucesso]|
    
    