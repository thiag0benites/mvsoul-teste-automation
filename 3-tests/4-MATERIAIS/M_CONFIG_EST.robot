#################################################################################################################################################################
# Autor: Danilo Campanello
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_CONFIG_EST "3-tests\4-MATERIAIS\M_CONFIG_EST.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_CONFIG_EST "3-tests\4-MATERIAIS\M_CONFIG_EST.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_CONFIG_EST.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_CONFIG_EST.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/4-MATERIAIS/M_CONFIG_EST_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}        m_config_est
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-3020:Configurar Funcionamento do Estoque
# robot -v browser:chrome -t "SMF-3020:Configurar Funcionamento do Estoque" -d ./5-results/SMF-3020 "3-tests/4-MATERIAIS/M_CONFIG_EST.robot"
# robot -v browser:firefox -t "SMF-3020:Configurar Funcionamento do Estoque" -d ./5-results/SMF-3020 "3-tests/4-MATERIAIS/M_CONFIG_EST.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-3020"
    Acessar a tela pela busca |${dados}[AcessoTela1]||${dados}[AcessoTela2]|@nprint @nlas
    Preencher "Inflacao Mensal de Formacao de OC|${dados}[FormacaoOC]|", "Valor Inflacao|${dados}[VlInflacao]|", "Validar Alteracao|${dados}[ValidAlteracao]|"
    Preencher "Manutencao Lote Compras|Manutenção do Estoque (Lote de Compras em dias)|", "Qtd De Lotes Em Dias |${dados}[QtdXA]|, |${dados}[QtdZA]|, |${dados}[QtdXC]|, |${dados}[QtdZC]|", "Validar Alteracao|${dados}[ValidAlteracao]|"
