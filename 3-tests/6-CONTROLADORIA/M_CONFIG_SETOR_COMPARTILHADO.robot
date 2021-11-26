#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Centros de Custos de Serviços Compartilhados
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/O_REABRE_LOTE_STEPS "3-tests\2 - ASSISTENCIAL\O_REABRE_LOTE.robot"
# chrome:         robot -v browser:firefox -d ./5-results/O_REABRE_LOTE_STEPS "3-tests\2 - ASSISTENCIAL\O_REABRE_LOTE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/O_REABRE_LOTE_STEPS "3-tests\2 - ASSISTENCIAL\O_REABRE_LOTE.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/O_REABRE_LOTE_RPA_STEPS "3-tests\2 - ASSISTENCIAL\O_REABRE_LOTE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes

Resource            ../../1-resources/6-CONTROLADORIA/M_CONFIG_SETOR_COMPARTILHADO_STEPS.robot


### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao


*** Variable ***
# # Suite registrada no gerenciador de dados
# ${suite}          fat_consultas_conta_paciente
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***
SMF-10303 : Cadastrar Regras de Alocacao
# robot -v browser:chrome -t "SMF-10303 : Cadastrar Regras de Alocacao" -d ./5-results/SMF-10303 "3-tests/6-CONTROLADORIA/M_CONFIG_SETOR_COMPARTILHADO.robot"
# robot -v browser:firefox -t "SMF-10303 : Cadastrar Regras de Alocacao" -d ./5-results/SMF-10303 "3-tests/6-CONTROLADORIA/M_CONFIG_SETOR_COMPARTILHADO.robot"
    Acessar a tela "Controladoria>Custos>Configurações>Centros de Serviços Compartilhados"@nprint @las 
    Wait Until Element Is Visible   ${btnAdicionar}     360  
    Click Elemento por titulo       Adicionar
    Click Element   ${camVig}
    Sleep       60




