#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Exclusão de Pedido de Exames
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_SOLIC_DILIGENCIAMENTO.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_SOLIC_DILIGENCIAMENTO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_SOLIC_DILIGENCIAMENTOrobot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_SOLIC_DILIGENCIAMENTO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/2-ASSISTENCIAL/M_SOLIC_DILIGENCIAMENTO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_SOLIC_DILIGENCIAMENTO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMSOLICDILIGENCIAMENTO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMSOLICDILIGENCIAMENTO-001:Fluxo Principal" -d ./5-results/SCR2AMSOLICDILIGENCIAMENTO-001 "3-tests/2-ASSISTENCIAL/M_SOLIC_DILIGENCIAMENTO.robot"
# robot -v browser:firefox -t "SCR2AMSOLICDILIGENCIAMENTO-001:Fluxo Principal" -d ./5-results/SCR2AMSOLICDILIGENCIAMENTO-001 "3-tests/2-ASSISTENCIAL/M_SOLIC_DILIGENCIAMENTO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMSOLICDILIGENCIAMENTO-001"
    #Acessar a tela "Diagnostico e Terapia>Laboratorio de Analises Clinicas>Atendimento>Exclusão de Pedido de Exame" @nprint @las
    Acessa a Tela Pela Busca |M_SOLIC_DILIGENCIAMENTO||Solicitação de Diligenciamento| @las
    Abrir Pedido e inserir Obs |${dados}[Pedido]| |${dados}[Cod]| |${dados}[Obs]|
    Solicitar e Validar |${dados}[MsgSalva]|