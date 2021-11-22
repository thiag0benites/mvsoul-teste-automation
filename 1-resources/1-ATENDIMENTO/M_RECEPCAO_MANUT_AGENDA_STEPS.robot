##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Manutenção de Agendas
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_RECEPCAO_MANUT_AGENDA_PAGE.robot
Resource    ../2-ASSISTENCIAL/M_USUUNID_STEPS.robot

*** Variable ***

*** Keywords ***
Preencher Campos Para Consulta de Agenda
    Preencher Campo                         ${CampoDtInicial}                 09/07/2021
    Preencher Campo                         ${CampoDtFinal}                   09/07/2021
    Preencher Campo                         ${CampoAgendamento}               Paciente
    Preencher Campo                         ${CampoAgenda}                    Todos
    Selecionar Item Na Lista                ${BotaoLovPrestador}              GEISHA ABREU SOARES DE PINA                GEISHA ABREU SOARES DE PINA
    Marcar Checkbox |${CbHorarioAgendado}|

Clicar Botao Executar Pesquisa
    Click no Item                           ${BotaoExecPesquisa}     

Validar Resultado da Pesquisa
    Validar Elemento Pelo Titulo            49369    
    Validar Elemento Pelo Titulo            436549
    Validar Elemento Pelo Titulo            MARIA JOSE
    Validar Elemento Pelo Titulo            CONSULTA CLINICA GERAL
    Validar Elemento Pelo Titulo            723855
    Validar Elemento Pelo Titulo            ABDIEL DE CASTRO CABRAL
    

