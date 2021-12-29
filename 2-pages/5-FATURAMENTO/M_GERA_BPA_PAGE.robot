##################################################################################################################################
# Autor: Marcos Costa
# Descrição: Realizar a Exportação Aba Remessa BPA
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
${BtCompA}     xpath=//*[@id="inp:competencia"]
${BtCompB}     xpath=//*[@id="competencia"]/button/span[1]
${BtCompC}     xpath=//*[@id="#filterLov"]
${BtCompD}     xpath=//*[@id="btfilter"]
${BtCompE}     xpath=//*[@id="btok"]
# Remessa
${BtRemeA}     xpath=//*[@id="inp:cdRemessa"]
${BtRemeB}     xpath=//*[@id="PG_FECHAR_cdRemessa"]/button/span[1]
${BtRemeC}     xpath=//*[@id="#filterLov"]
${BtRemeD}     xpath=//*[@id="btfilter"]
${BtRemeE}     xpath=//*[@id="btok"]
# Tipo de Consistencia
${BtConsisA}     xpath=//*[@id="PG_FECHAR_tpConsistencia"]/button/span[1]
${BtConsisB}     xpath=//*[@id="PG_FECHAR_tpConsistencia_ac"]
# Consistir
${BtConsist}     xpath=//*[@id="PG_FECHAR_btConsistir"]
#Fechar
${BtFechar}     xpath=//*[@id="PG_FECHAR_btFechar"]
# Salvar e Valida Msg de Registro Salvo
${MgsVerif}    xpath=//p[@class='notifications-item-text']