##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da página de Entrada dos Produtos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource            ../../Config.robot

*** Variable ***
### Campos ###
${CampoHDA}                                          xpath=//textarea[@id='inp:dsHda']
${CampoExameFisico}                                  xpath=//textarea[@id='inp:dsExFis']
${CampoTratamento}                                   xpath=//textarea[@id='inp:dsTratamento']
${CampoDiagnostico}                                  xpath=//textarea[@id='inp:dsDiagnostico']
### Botoes ###
${BtnAtender}                                        xpath=//button[@id='btnAtender']
${BtnOkAlerta}                                       xpath=//button[@class='btn btn-primary']
${BtnNovoDiag}                                       xpath=//button[@id='DIAGNOSTICOS_btnNovoDiagnosticoCas']
${BtnGravar}                                         xpath=//li[@id='tb-record-save']     
${BtnConfirmar}                                      xpath=//button[@id='DIAGNOSTICOS_btnConfirmaCasosAtd']                               
### Variados ###
${MsgAlerta}                                         xpath=//p[@class='notifications-item-text']
${AbaDiagnostico}                                    xpath=//li[@aria-controls='CASOS_ATD-DIAGNOSTICOS']