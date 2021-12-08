##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da tela 
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${campoDescricao}                   xpath=//input[@class='editor-text mode-edit']
${CampoCodBanco}                    xpath=//input[@id='inp:cdBanco']
${CampoAgencia}                     xpath=//input[@id='inp:cdAgencia']
${CampoDigitoAgencia}               xpath=//input[@id='inp:cdDigitoAgencia']
${CampoBairro}                      xpath=//input[@id='inp:dsAgencia']
${CampoNumConta}                    xpath=//input[@id='inp:nrConta']
${CampoDigitoConta}                 xpath=//input[@id='inp:cdDigitoContaCorrente']
${CampoTipoContaCorrente}           xpath=//input[@id='inp:cdTipContaCorrente']
${CampoCodReduzido}                 xpath=//input[@id='inp:cdReduzido']
${CampoGerente}                     xpath=//input[@id='inp:nmGerente']
${AbaTransEntreEmpresas}            xpath=//a[@id='TAB_PAGE1_TAB_PAGE1_tab1']/..
${CampoEmpresa}                     xpath=//div[@data-member="CD_MULTI_EMPRESA"][@data-row="0"]/..
${CampoEmpresaEdit}                 xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']/input
${CampoTipoTrans}                   xpath=//div[@class="ui-combobox ui-buttoninput ui-widget mode-edit"]/input
${CampoCodReduz}                    xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']/input                      

### Botoes ###

${BtnCodContab}                     xpath=//div[@id='cdReduzido']/button
${BtnListaEmpresas}                 xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']/button
${btnSalvar}                        xpath=//li[@id='tb-record-save']




### Diversos ###
${Alerta}                           xpath=//div[@class='notifications-item-body notification-item-no-title']/p