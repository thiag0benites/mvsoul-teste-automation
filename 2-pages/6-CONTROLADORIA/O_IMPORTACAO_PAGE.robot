##################################################################################################################################
# Autor: José Neto
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${campoTipoImp}                    xpath=//input[@id="tpImportacao_ac"]
${campoFiltro}                     xpath=//input[@id="#filterLov"]

### Botoes ###
${btnPlano}                        xpath=//*[@id="cdPlano"]/button
${btnAgrupLancCodRed}              xpath=//button[@id="inp:snAgrupa_btn"]
${btnUtilSeq}                      xpath=//button[@id="inp:snSequencial_btn"]
${btnGerarContas}                  xpath=//button[@id="inp:snGeraContasMesmoReduzido_btn"]
${btnUnicoCodMov}                  xpath=//button[@id="inp:snUnicoLctoMovimento_btn"]
${btnConsiderarDtRef}              xpath=//button[@id="inp:snDtReferencia_btn"]
${btnImportarDiverg}               xpath=//button[@id="inp:chkImpDivergencias_btn"]
${btnImportar}                     xpath=//button[@id="butImportar"]
${btnFiltrar}                      xpath=//button[@id="btfilter"]
${btnOk}                           xpath=//button[@id="btok"]
${btnTipoImp}                      xpath=//*[@id="tpImportacao"]/button

### Diversos ###
${planoSelecionado}                xpath=//div[@id="grdLov"]//div[@data-member="CD_PLANO"][@title="PLTEST02"]
