##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Consulta de Agenda - Centro Cirúrgico / Cirurgião
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovCentroCirurgico}                xpath=//div[@id="cdCenCir"]/button
${CampoData}                              xpath=//input[@id="inp:vdataAgenda"]  
${CampoPrestador}                         xpath=//input[@id="inp:dspCdPrestCirur"]
${AbaCirurgia}                            xpath=//a[@id="TAB_TAB_tab1"]
${AbaEquipamentos}                        xpath=//a[@id="TAB_TAB_tab2"]
${AbaTipoAnestesia}                       xpath=//a[@id="TAB_TAB_tab3"]