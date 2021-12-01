#################################################################################################################################################################
# Autor: Rodrigo Torquato
# Decrição: Teste da tela Entrada dos Produtos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO/ "3-tests/1-ATENDIMENTO/M_ENTREGA_LAUDO_STEPS.robot
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO/ "3-tests/1-ATENDIMENTO/M_ENTREGA_LAUDO_STEPS.robot
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO/ "3-tests/1-ATENDIMENTO/M_ENTREGA_LAUDO_STEPS.robot
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO/ "3-tests/1-ATENDIMENTO/M_ENTREGA_LAUDO_STEPS.robot
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/M_ENTREGA_LAUDO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessao
# Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            m_entrega_laudo
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SRC1MMENTREGALAUDO-001:Fluxo Principal
# robot -v browser:chrome -t "SRC1MMENTREGALAUDO-001:Fluxo Principal" -d ./5-results/SRC1MMENTREGALAUDO-001 "3-tests/1-ATENDIMENTO/M_ENTREGA_LAUDO.robot"
# robot -v browser:firefox -t "SRC1MMENTREGALAUDO-001:Fluxo Principal" -d ./5-results/SRC1MMENTREGALAUDO-001 "3-tests/1-ATENDIMENTO/M_ENTREGA_LAUDO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SRC1MMENTREGALAUDO-001"
    Acessar a tela "Diagnostico e Terapia>Diagnóstico por Imagem>Atendimentos>Registro de Entrega de Laudos"@nprint @las
    Selecionar Selecionar Setor Solicitante |${dados}[Setor]|
    Clicar no Botao |Pesquisa|
    Selecionar Pedido de Exame Por Laudo |${dados}[N_Laudo]|
    Validar Pop Up de Observacoes 
    Clicar no Botao |${dados}[Botao2]|
    