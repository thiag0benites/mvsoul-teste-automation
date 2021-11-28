##################################################################################################################################
# Autor: Marcos Costa
# Decrição: Executar  a conciliação bancária dos lançamentos de extrato efetuados nas contas correntes da instituição . 
# A conciliação consiste num comparativo entre as movimentações na conta bancária e as registradas no sistema de Controle Financeiro.
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

#Campos

${campoPerInicial}    xpath=//*[@id="inp:dspDtinic"]
${campoPerFinal}      xpath=//*[@id="inp:dspDtfinal"]
${ValorMinimo}        xpath=//*[@id="inp:dspVlInicio"]
${ValoMaximo}         xpath=//*[@id="inp:dspVlFinal"]
${NumeroDoc}          xpath=//*[@id="inp:nrDocumento"] 
${BtFilter}           xpath=//*[@id="btfilter"]
${FilterLovC}         xpath=//*[@id="#filterLov"]
${Vfiltro}            xpath=//*[@id="#filterLov"]

# Botões

${MultEmpresa}     xpath=//*[@id="cdMultiEmpresa"]/button 
${BotaoFiltro}     xpath=//*[@id="btfilter"]
${grdLov}          xpath=//*[@id="grdLov"]/div[4]/div[3]/div/div[5]/div[2]/div
${BtOk}            xpath=//*[@id="btok"]
${TipoDoc}         xpath=//*[@id="tpDocumento"]/button
${TipoDocLov}      xpath=//*[@id="tpDocumento_ac"]
${BtConCor}        xpath=//*[@id="cdConCor"]/button
${BtConCorOk}      xpath=//*[@id="btok"]
${ExecPesc}        xpath=//*[@id="tb-execute"]
${ListConCor}      xpath=//*[@id="inp:cdConCor"]
${SalConCor}       xpath=//*[@id="tb-record-save"]

#Check Box

${CkMovCor}        xpath=//*[@id="grdMovConcor"]/div[4]/div[3]/div/div/div[1]/div/button
