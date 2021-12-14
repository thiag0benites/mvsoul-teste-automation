#################################################################################################################################################################
# Autor: Flavio Silva
# Decrição: Testes da tela M_PED_RX
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_PED_RX "3-tests/1-ATENDIMENTO/M_PED_RX.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_PED_RX "3-tests/1-ATENDIMENTO/M_PED_RX.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_PED_RX "3-tests/1-ATENDIMENTO/M_PED_RX.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_PED_RX "3-tests/1-ATENDIMENTO/M_PED_RX.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/M_PED_RX_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            m_ped_rx
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SRC1AMPEDRX-001:Fluxo principal
# robot -v browser:chrome -t "SRC1AMPEDRX-001:Fluxo principal" -d ./5-results/SRC1AMPEDRX-001 "3-tests/1-ATENDIMENTO/M_PED_RX.robot"
# robot -v browser:firefox -t "SRC1AMPEDRX-001:Fluxo principal" -d ./5-results/SRC1AMPEDRX-001 "3-tests/1-ATENDIMENTO/M_PED_RX.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SRC1AMPEDRX-001"
    #Acessar a tela "Diagnostico e Terapia>Diagnóstico por Imagem>Atendimentos>Pedidos de Exames Imagem"@nprint @las
    Acessa a Tela Pela Busca |M_PED_RX||Pedidos de Exames Imagem| @las
    Preencher atendimento |${dados}[Atendimento]|
    Escolha o medico solicitante |${dados}[Medico]|
    Digite a data da coleta |${dados}[Data]|
    Escolha <o setor executante> |${dados}[Setor]|, <o setor solicitante> |${dados}[Solicitante]|, <o tecnico> |${dados}[Tecnico]|, <o exame> |${dados}[Exame]|
    Clicar em Salvar