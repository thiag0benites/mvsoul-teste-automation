##################################################################################################################################
# Autor: Marcos Costa
# Decrição: Relatório Pagamentos Realizados
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
# Empresa:
${CpEmpresaA}         xpath=//*[@id="inp:cdMultiEmpresa"]
${CpEmpresaB}         xpath=//*[@id="CV_TAB_PADRAO_cdMultiEmpresa"]/button/span[1]
${CpEmpresaC}         xpath=//*[@id="#filterLov"]
${CpEmpresaD}         xpath=//*[@id="btfilter"]
${CpEmpresaE}         xpath=//*[@id="btok"]
# Fornecedor:
${CpForneceA}         xpath=//*[@id="inp:cdFornecedor"]
${CpForneceB}         xpath=//*[@id="CV_TAB_PADRAO_cdFornecedor"]/button/span[1]
${CpForneceC}         xpath=//*[@id="#filterLov"]
${CpForneceD}         xpath=//*[@id="btfilter"]
${CpForneceE}         xpath=//*[@id="btok"]
# Conta Contabil:
${CpContConA}         xpath=//*[@id="inp:cdReduzido"]
${CpContConB}         xpath=//*[@id="CV_TAB_PADRAO_cdReduzido"]/button/span[1]
${CpContConC}         xpath=//*[@id="#filterLov"]
${CpContConD}         xpath=//*[@id="btfilter"]
${CpContConE}         xpath=//*[@id="btok"]
# Conta Corrente:
${CpContCorA}         xpath=//*[@id="inp:cdConCor"]
${CpContCorB}         xpath=//*[@id="CV_TAB_PADRAO_cdConCor"]/button/span[1]
${CpContCorC}         xpath=//*[@id="#filterLov"]
${CpContCorD}         xpath=//*[@id="btfilter"]
${CpContCorE}         xpath=//*[@id="btok"]
# Processos:
${CpProcessA}         xpath=//*[@id="inp:cdProcesso"]
${CpProcessB}         xpath=//*[@id="CV_TAB_PADRAO_cdProcesso"]/button/span[1]
${CpProcessC}         xpath=//*[@id="#filterLov"]
${CpProcessD}         xpath=//*[@id="btfilter"]
${CpProcessE}         xpath=//*[@id="btok"]
# Tipo de Documento
${CpTipoDocA}         xpath=//*[@id="inp:cdTipDoc"]
${CpTipoDocB}         xpath=//*[@id="CV_TAB_PADRAO_cdTipDoc"]/button/span[1]
${CpTipoDocC}         xpath=//*[@id="#filterLov"]
${CpTipoDocD}         xpath=//*[@id="btfilter"]
${CpTipoDocE}         xpath=//*[@id="btok"]
#Periodo Inicial
${CpPerInicial}     xpath=//*[@id="inp:dtInicial"]
${CpPerInicial}     xpath=
#Periodo Final
${CpPerFinal}      xpath=//*[@id="inp:dtFinal"]
${CpPerFinal}      xpath=
# Tipo Periodo
${CpTpPeriodo}     xpath=//*[@id="CV_TAB_PADRAO_tpPeriodo_ac"]
${CpTpPeriodo}     xpath=
# Imprimir
${BtImprimir}      xpath=//button[@class='ui-widget ui-button btn btn-default ui-state-default ui-box-fixed-size mode-edit']//span[@class='ui-icon mv-basico-imprimir']
