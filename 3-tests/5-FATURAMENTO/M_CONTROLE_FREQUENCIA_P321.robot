#################################################################################################################################################################
# # Autor: Fernando Carvalho
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\2 - ASSISTENCIAL\M_CONTROLE_FREQUENCIA_P321.robot"
# firefox:        robot -v browser:firefox -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\2 - ASSISTENCIAL\M_CONTROLE_FREQUENCIA_P321.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\2 - ASSISTENCIAL\M_CONTROLE_FREQUENCIA_P321.robot"
# firefox:        robot -v browser:headlessfirefox -d ./5-results/C_LISTAGEM_CONFERENCIA_RPA_STEPS "3-tests\2 - ASSISTENCIAL\M_CONTROLE_FREQUENCIA_P321.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/5-FATURAMENTO/M_CONTROLE_FREQUENCIA_P321_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
 # Suite registrada no gerenciador de dados
${suite}    m_controle_frequencia_p321        
 # Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMCONTROLEFREQUENCIAP321-001:Fluxo Principal           
# robot -v browser:chrome -t "SCR5FMCONTROLEFREQUENCIAP321-001:Fluxo Principal" -d ./5-results/SCR5FMCONTROLEFREQUENCIAP321-001 "3-tests/5-FATURAMENTO/M_CONTROLE_FREQUENCIA_P321.robot"
# robot -v browser:firefox -t "SCR5FMCONTROLEFREQUENCIAP321-001:Fluxo Principal" -d ./5-results/SCR5FMCONTROLEFREQUENCIAP321-001 "3-tests/5-FATURAMENTO/M_CONTROLE_FREQUENCIA_P321.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMCONTROLEFREQUENCIAP321-001"
    Acessar a tela "Faturamento>Faturamento Ambulatorial SUS (BPA e APAC)>Lançamentos>APAC>Ficha de Frequência APAC"@nprint @nao    
    Controle de frequencia individual |${dados}[MesAno]||${dados}[Prontuario]||${dados}[Atendimento]||${dados}[Prestador]||${dados}[DataInicial]||${dados}[DataFinal]||${dados}[CodProcedimentoPrincipal]|