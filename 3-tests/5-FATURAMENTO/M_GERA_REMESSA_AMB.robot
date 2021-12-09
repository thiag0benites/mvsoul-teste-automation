#################################################################################################################################################################
# Autor: Flavio Silva
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_GERA_REMESSA_AMB_STEPS "3-tests\5 - FATURAMENTO\M_GERA_REMESSA_AMB.robot"
# chrome:         robot -v browser:firefox -d ./5-results/M_CENTRO_CUSTO_COMP_STEPS "3-tests\5 - FATURAMENTO\M_GERA_REMESSA_AMB.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_GERA_REMESSA_AMB_STEPS "3-tests\5 - FATURAMENTO\M_GERA_REMESSA_AMB.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/M_GERA_REMESSA_AMB_STEPS "3-tests\5 - FATURAMENTO\M_GERA_REMESSA_AMB.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/5-FATURAMENTO/M_GERA_REMESSA_AMB_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
${suite}          m_gera_remessa_amb
# # Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-56 : Criar Remessas Ambulatoriais
# robot -v browser:chrome -t "SMF-56 : Criar Remessas Ambulatoriais" -d ./5-results/SMF-56 "3-tests/5-FATURAMENTO/M_GERA_REMESSA_AMB.robot"
# robot -v browser:firefox -t "SMF-56 : Criar Remessas Ambulatoriais" -d ./5-results/SMF-56 "3-tests/5-FATURAMENTO/M_GERA_REMESSA_AMB.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-56"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Criação de Remessa"@nprint @las
    Preencher os campos <Convenio> |${dados}[FiltroConvenio]|, <Plano> <origem> |${dados}[FiltroOrigem]|, <periodos> |${dados}[DataInicio]| |${dados}[DataFinal2]| |${dados}[Atendimento]|
    Clicar no botao Pesquisar |${dados}[MsgVerificada]|
    Clicar no botao Cria Remessa
    Preencher os campos <Competencia da Fatura> |${dados}[DataComp]|, <Data de Inicio da Remessa> |${dados}[DataRemessa2]|, <Data de Termino da Remessa> |${dados}[DataTerminio]|