##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Manutenção de Agendas
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoDtInicial}                        xpath=//input[@id="inp:dtIniP"]
${CampoDtFinal}                          xpath=//input[@id="inp:dtFimP"]  
${CampoAgendamento}                      xpath=//input[@id="tpAgendamento_ac"]
${CampoAgenda}                           xpath=//input[@id="tpAgendaP_ac"]     
${BotaoLovPrestador}                     xpath=//div[@id="cdPrestadorP"]/button
${CbHorarioAgendado}                     xpath=//button[@id="inp:snHorariosAgendados_btn"]
${BotaoExecPesquisa}                     xpath=//button[@id="btnExecutar"]