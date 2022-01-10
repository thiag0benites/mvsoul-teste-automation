##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${CampoPerfil}                             xpath=//input[@class="editor-text mode-edit"]



### Botoes ###
${BtnAdicionar}                            xpath=//a[@title="Adicionar"]
${BtnSalvar}                               xpath=//a[@title="Salvar"]

${BtnEmpresa}                              xpath=//div[@id="PADRAO_cdMultiEmpresa"]/button
${BtnSetor}                                xpath=//div[@id="PADRAO_cdSetor"]/button
${BtnEspecialidade}                        xpath=//div[@id="PADRAO_cdEspecialidade"]/button
${BtnTipoPrestador}                        xpath=//div[@id="PADRAO_cdTipPresta"]/button
${BtnPortaEntrada}                         xpath=//div[@id="PADRAO_dsPortaEntrada"]/button
${BtnSistema}                              xpath=//div[@id="PADRAO_cdSistema"]/button
${BtnFiltrar}                              xpath=//button[@id="btfilter"]
${BtnCopiarPerfil}                         xpath=//button[@id="btnCopia"]


### Diversos ###
${Alerta}                                  xpath=//p[@class='notifications-item-text']
   



 


