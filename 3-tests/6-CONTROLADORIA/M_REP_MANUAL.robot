#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_REP_MANUAL "3-tests\2 - ASSISTENCIAL\M_REP_MANUAL.robot"
# chrome:         robot -v browser:firefox -d ./5-results/M_REP_MANUAL "3-tests\2 - ASSISTENCIAL\M_REP_MANUAL.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_REP_MANUAL "3-tests\2 - ASSISTENCIAL\M_REP_MANUAL.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/M_REP_MANUAL "3-tests\2 - ASSISTENCIAL\M_REP_MANUAL.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes

Resource            ../../1-resources/6-CONTROLADORIA/M_REP_MANUAL_STEPS.robot


### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao


*** Variable ***
# # Suite registrada no gerenciador de dados
${suite}          m_rep_manual
# # Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-6503 : Realizar o Lancamento Manual de Repasse Medico
# robot -v browser:chrome -t "SMF-6503 : Realizar o Lancamento Manual de Repasse Medico" -d ./5-results/SMF-6503 "3-tests/6-CONTROLADORIA/M_REP_MANUAL.robot"
# robot -v browser:firefox -t "SMF-6503 : Realizar o Lancamento Manual de Repasse Medico" -d ./5-results/SMF-6503 "3-tests/6-CONTROLADORIA/M_REP_MANUAL.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-6503"
    Acessar a tela "Controladoria>Repasse Médico>Repasse>Lançamento Manual"@nprint @las
    Clicar no botao [Buscar]
    No campo <Competencia> inserir a competencia desejada e clicar no botao [Executar]
    Clicar no botao [Adicionar] para realizar lancamento manual
    Inserir Data Repasse |20/Mai/2019|
    Usuario devera informar no campo <Codigo> o prestador que recebera o repasse |${dados}[Prestador]|
    Usuario devera informar no campo <Grupo de Repasse> o grupo ao qual o prestador foi associado |${dados}[Grupo]|
    Usuario devera informar no campo <Setor> qual setor o prestador selecionado presta serviços |${dados}[Setor]|
    Usuario devera informar no campo <Valor faturado> o valor referente aos procedimentos executados pelo prestador selecionado |${dados}[Valor]|
    Usuario devera informar no campo <Valor Repasse> o valor a ser repassado para o prestador |${dados}[Repasse]|    
    Usuario devera informar no campo <Descricao> a identificacao do repasse em referencia |${dados}[Descricao]|
    Usuario devera clicar no botao [Salvar]






