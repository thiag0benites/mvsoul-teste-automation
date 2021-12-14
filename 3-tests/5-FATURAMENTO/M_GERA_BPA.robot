#################################################################################################################################################################
# Autor: Marcos Costa
# Descrição: Configurar e centralizar as parametrizações do processo da nota fiscal.
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -t "SCR5FMGERABPAF001:Fluxo Principal" -d ./5-results/SCR5FMGERABPAF001 "3-tests/5-FATURAMENTO/M_GERA_BPA.robot"
# chrome:         robot -v browser:firefox -t "SCR5FMGERABPAF001:Fluxo Principal" -d ./5-results/SCR5FMGERABPAF001 "3-tests/5-FATURAMENTO/M_GERA_BPA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -t "SCR5FMGERABPAF001:Fluxo Principal" -d ./5-results/SCR5FMGERABPAF001 "3-tests/5-FATURAMENTO/M_GERA_BPA.robot"
# chrome:         robot -v browser:headlessfirefox -t "SCR5FMGERABPAF001:Fluxo Principal" -d ./5-results/SCR5FMGERABPAF001 "3-tests/5-FATURAMENTO/M_GERA_BPA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/5-FATURAMENTO/M_GERA_BPA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
# Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
# ${suite}         m_gera_bpa
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***
# Video - SMF-10373
SCR5FMGERABPAF001:Fluxo Principal
    # robot -v browser:chrome -t "SCR5FMGERABPAF001:Fluxo Principal" -d ./5-results/SCR5FMGERABPAF001 "3-tests/5-FATURAMENTO/M_GERA_BPA.robot"
    # robot -v browser:firefox -t "SCR5FMGERABPAF001:Fluxo Principal" -d ./5-results/SCR5FMGERABPAF001 "3-tests/5-FATURAMENTO/M_GERA_BPA.robot"
    # ${dados}  Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMGERABPAF001"
    Acessar a tela "Faturamento>Faturamento Ambulatorial SUS (BPA e APAC)>Faturamento>Exportação BPA(Nova)"@nprint @las
    Validar Checkbox de Solicitacao Marcado 
    Clicar Salvar |${dados}[Salvar]|