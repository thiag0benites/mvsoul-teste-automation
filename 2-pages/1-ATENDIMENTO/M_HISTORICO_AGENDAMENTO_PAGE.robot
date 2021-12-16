##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Elementos e metodos da página de Histórico de Agendamentos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable *** 
${DtIni}                                    xpath=//input[@id="inp:dtInicioAgenda"]
${DtF}                                      xpath=//input[@id="inp:dtFimAgenda"]
${BtnPesquisar}                             xpath=//button[@id="btnPesquisaParametros"]


