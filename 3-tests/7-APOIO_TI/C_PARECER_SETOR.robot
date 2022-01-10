#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela C_PARECER_SETOR
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/C_PARECER_SETOR "3-tests/7-APOIO_TI/C_PARECER_SETOR.robot"
# firefox: robot -v browser:firefox -d ./5-results/C_PARECER_SETOR "3-tests/7-APOIO_TI/C_PARECER_SETOR.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/C_PARECER_SETOR "3-tests/7-APOIO_TI/C_PARECER_SETOR.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/C_PARECER_SETOR "3-tests/7-APOIO_TI/C_PARECER_SETOR.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/7-APOIO_TI/C_PARECER_SETOR_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          C_PARECER_SETOR
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR7AMCPARECERSETOR-001:Fluxo principal
# robot -v browser:chrome -t "SCR7AMCPARECERSETOR-001:Fluxo principal" -d ./5-results/C_PARECER_SETOR "3-tests/7-APOIO_TI/C_PARECER_SETOR.robot"
# robot -v browser:firefox -t "SCR7AMCPARECERSETOR-001:Fluxo principal" -d ./5-results/C_PARECER_SETOR "3-tests/7-APOIO_TI/C_PARECER_SETOR.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR7AMCPARECERSETOR-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Preencher a tabela de setores envolvidos
    Preencher a tabela de motivos
    Preencher a tabela de Funcionarios destinatarios do setor
    Preencher solicitacao do parecer ao setor envolvido
    Clicar no botao Salvar
