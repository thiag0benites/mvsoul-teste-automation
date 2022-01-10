#################################################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\2 - ASSISTENCIAL\C_LISTAGEM_CONFERENCIA.robot"
# firefox:        robot -v browser:firefox -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\2 - ASSISTENCIAL\C_LISTAGEM_CONFERENCIA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\2 - ASSISTENCIAL\C_LISTAGEM_CONFERENCIA.robot"
# firefox:        robot -v browser:headlessfirefox -d ./5-results/C_LISTAGEM_CONFERENCIA_RPA_STEPS "3-tests\2 - ASSISTENCIAL\C_LISTAGEM_CONFERENCIA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/4-MATERIAIS/M_DEVOLPRO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
${suite}          m_devolpro
# # Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMDEVOLPRO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MMDEVOLPRO-001:Fluxo Principal" -d ./5-results/SCR4MMDEVOLPRO-001 "3-tests/4-MATERIAIS/M_DEVOLPRO.robot"
# robot -v browser:firefox -t "SCR4MMDEVOLPRO-001:Fluxo Principal" -d ./5-results/SCR4MMDEVOLPRO-001 "3-tests/4-MATERIAIS/M_DEVOLPRO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMDEVOLPRO-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Solicitações>Devolução de Produtos"@nprint @nao
    Destino da Solicitacao|${dados}[SolicitaEstoque]||${dados}[MotivoDevolucao]||${dados}[Setor]|
    Produtos Solicitados|${dados}[Produto]||${dados}[Lote]||${dados}[Quantidade]|
    Salvar e Validar Informacao|${dados}[MsgEsperada1]||${dados}[MsgEsperada2]|
