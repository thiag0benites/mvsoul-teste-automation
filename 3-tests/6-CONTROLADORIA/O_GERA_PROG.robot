#################################################################################################################################################################
# Autor: Flavio Silva
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/O_GERA_PROG_STEPS "3-tests\6 - CONTROLADORIA\O_GERA_PROG.robot"
# chrome:         robot -v browser:firefox -d ./5-results/O_GERA_PROG_STEPS "3-tests\6 - CONTROLADORIA\O_GERA_PROG.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/O_GERA_PROG_STEPS "3-tests\6 - CONTROLADORIA\O_GERA_PROG.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/O_GERA_PROG_STEPS "3-tests\6 - CONTROLADORIA\O_GERA_PROG.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/6-CONTROLADORIA/O_GERA_PROG_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
#${suite}          m_centro_custo_comp
# # Recebe dados do gerenciador
#${dados}

*** Test Case ***
SMF-7513 : Cadastrar Previsão de Despesas escolhendo Contabilizar Não
# robot -v browser:chrome -t "SMF-7513 : Cadastrar Previsão de Despesas escolhendo Contabilizar Não" -d ./5-results/SMF-7513 "3-tests/6-CONTROLADORIA/O_GERA_PROG.robot"
# robot -v browser:firefox -t "SMF-7513 : Cadastrar Previsão de Despesas escolhendo Contabilizar Não" -d ./5-results/SMF-7513 "3-tests/6-CONTROLADORIA/O_GERA_PROG.robot"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Financeiro>Contas a Pagar>Lançamentos/Adiantamentos>Previsão>Cadastro"@nprint @las