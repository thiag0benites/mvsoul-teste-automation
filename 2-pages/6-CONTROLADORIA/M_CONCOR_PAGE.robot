##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da tela 
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

${BtnOk}                            xpath=//button[@id='btok']
${BtnFiltrar}                       xpath=//button[@id='btfilter']
${CampoFiltro}                      xpath=//input[@id='#filterLov']  

### Campos ###
${campoDescricao}                   xpath=//input[@class='editor-text mode-edit']
${DivBancoFiltrado}                 xpath=//div[@data-member="DSP_NM_BANCO"][contains(text(),"ITAU UNIBANCO S.A.")]
${CampoAgencia}                     xpath=//input[@id='inp:cdAgencia']
${CampoDigitoAgencia}               xpath=//input[@id='inp:cdDigitoAgencia'] 
${CampoBairro}                      xpath=//input[@id='inp:dsAgencia']
${CampoNumConta}                    xpath=//input[@id='inp:nrConta']
${CampoDigitoConta}                 xpath=//input[@id='inp:cdDigitoContaCorrente']
${CampoTipoContaCorrente}           xpath=//input[@class='filterinput']
${DivBancoFiltrado}                 xpath=//div[@data-member="DS_TIP_CONTA_CORRENTE"][contains(text(),"CONTA CORRENTE")]
${DivCodContab}                     xpath=//div[@data-member="DS_CONTA"][contains(text(),"BANCO  ITAU")]
${CampoGerente}                     xpath=//input[@id='inp:nmGerente']   
${AbaTransEntreEmpresas}            xpath=//a[@id='TAB_PAGE1_TAB_PAGE1_tab1']/..
${CampoEmpresa}                     xpath=//div[@data-member="CD_MULTI_EMPRESA"][@data-row="0"]/..
${CampoEmpresaEdit}                 xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']/input
${CampoTipoTrans}                   xpath=//div[@class="ui-combobox ui-buttoninput ui-widget mode-edit"]/input
${CampoCodReduzido}                

### Botoes ###
${BtnCodBanco}                      xpath=//div[@id='cdBanco']/button
${BtnTipoContaCorrente}             xpath=//div[@id='cdTipContaCorrente']/button
${BtnCodContab}                     xpath=//div[@id='cdReduzido']/button
${BtnListaEmpresas}                 xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']/button






### Diversos ###
${Alerta}                           xpath=