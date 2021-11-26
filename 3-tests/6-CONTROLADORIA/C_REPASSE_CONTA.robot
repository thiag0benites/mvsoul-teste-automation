#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/C_REPASSE_CONTA "3-tests\6-CONTROLADORIA\C_REPASSE_CONTA.robot"
# chrome:         robot -v browser:firefox -d ./5-results/C_REPASSE_CONTA "3-tests\6-CONTROLADORIA\C_REPASSE_CONTA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/C_REPASSE_CONTA "3-tests\6-CONTROLADORIA\C_REPASSE_CONTA.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/C_REPASSE_CONTA "3-tests\6-CONTROLADORIA\C_REPASSE_CONTA.robot"
#################################################################################################################################################################
Pré-condições
(Controladoria > Repasse Médico > Repasse > Geração > Convênio) (M_REPASSE)
(Controladoria > Repasse Médico > Repasse > Geração > SIA) (M_REPASSE_SIA)
(Controladoria > Repasse Médico > Repasse > Geração > SIH) (M_REPASSE_SIH)
(Controladoria > Repasse Médico > Repasse > Geração > Glosas) (M_REPASSE_GLOSA)
(Controladoria > Repasse Médico > Repasse > Geração > Terceiros) (M_REPASSE_TERCEIRO)
(Controladoria > Repasse Médico > Repasse > Geração > Recursos) (M_REPASSE_RECURSO)
(Controladoria > Repasse Médico > Repasse > Geração > Contas) (M_REPASSE_CONTA)
(Controladoria > Repasse Médico > Repasse > Geração > Custos) (O_GERA_HONORARIOS_CUSTO)
(Controladoria > Repasse Médico > Repasse > Geração > Assegurado) (M_REPASSE_ASSEGURADO)
(Controladoria > Repasse Médico > Repasse > Geração > Outros) (M_REPASSE_OUTROS)
(Controladoria > Repasse Médico > Repasse > Geração > Repasse Percentual) (M_REPASSE_PERCENTUAL)
(Controladoria > Repasse Médico > Repasse > Geração > Resultado) (M_REPASSE_RESULTADO)
(Controladoria > Repasse Médico > Repasse > Geração > Remuneração Variável) (M_REPASSE_REM_VARIAVEL)
(Controladoria > Repasse Médico > Repasse > Lançamento Manual) (M_REP_MANUAL)
Controladoria > Repasse Médico > Relatórios > Administrativos > Repasse de Prestadores (R_REPASSE_MEDICO)
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/6-CONTROLADORIA/C_REPASSE_CONTA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
# ${suite}        m_rep_manual
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***
SMF-4900 : Consultar os repasses gerados por atendimento para os prestadores
# robot -v browser:chrome -t "SMF-4900 : Consultar os repasses gerados por atendimento para os prestadores" -d ./5-results/SMF-4900 "3-tests/6-CONTROLADORIA/C_REPASSE_CONTA.robot"
# robot -v browser:firefox -t "SMF-4900 : Consultar os repasses gerados por atendimento para os prestadores" -d ./5-results/SMF-4900 "3-tests/6-CONTROLADORIA/C_REPASSE_CONTA.robot"
    Acessar a tela "Controladoria>Repasse Médico>Consultas>Repasse por Atendimento/Conta"@nprint @las
    Usuario devera informar o codigo do atendimento |67050| no campo <Atendimento>

SMF-4911 : Consultar os repasses gerados atraves nome do Paciente
# robot -v browser:chrome -t "SMF-4911 : Consultar os repasses gerados atraves nome do Paciente" -d ./5-results/SMF-4911 "3-tests/6-CONTROLADORIA/C_REPASSE_CONTA.robot"
# robot -v browser:firefox -t "SMF-4911 : Consultar os repasses gerados atraves nome do Paciente" -d ./5-results/SMF-4911 "3-tests/6-CONTROLADORIA/C_REPASSE_CONTA.robot"
    Acessar a tela "Controladoria>Repasse Médico>Consultas>Repasse por Atendimento/Conta"@nprint @las
    Usuario devera informar nome do paciente |TESTE DA SILVA HOBRA| no campo <Paciente>

SMF-4914 : Consultar o valor do honorário do Atendimento dos repasses gerados por atendiment
# robot -v browser:chrome -t "SMF-4914 : Consultar o valor do honorário do Atendimento dos repasses gerados por atendiment" -d ./5-results/SMF-4914 "3-tests/6-CONTROLADORIA/C_REPASSE_CONTA.robot"
# robot -v browser:firefox -t "SMF-4914 : Consultar o valor do honorário do Atendimento dos repasses gerados por atendiment" -d ./5-results/SMF-4914 "3-tests/6-CONTROLADORIA/C_REPASSE_CONTA.robot"
    Acessar a tela "Controladoria>Repasse Médico>Consultas>Repasse por Atendimento/Conta"@nprint @las
    Usuario devera informar o codigo do atendimento |67050| no campo <Atendimento>
    Usuario devera clicar no botao [Honor. do Atend]
