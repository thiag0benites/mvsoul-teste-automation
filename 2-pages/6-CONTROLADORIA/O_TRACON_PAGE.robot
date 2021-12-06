##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da tela 
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***


${BtnFiltrar}                       xpath=//button[@id='btfilter']
${CampoFiltro}                      xpath=//input[@id='#filterLov']  

### Campos ###
${campoNumDoc}                      xpath=//input[@id='inp:nrDocumentoIdentificacao']
${CampoDescricao}                   xpath=//input[@id='inp:dsMovimentacao']
${CampoValorMov}                    xpath=//input[@id='inp:vlMoedaV']
${CampoContaCorrente}               xpath=//input[@id='inp:cdConCor']
${CampoEmpresa}                     xpath=//input[@id='inp:cdMultiEmpresaDestino']    
${CampoCCorrente}                   xpath=//div[@id='cdConCorTransferencia']/input

### Botoes ###
${BtnCodLanc}                       xpath=//div[@id='cdLanConcor']/button
${BtnTipoTransf}                    xpath=//div[@id='tpTransferencia']
${btnSalvar}                        xpath=//li[@id='tb-record-save']
${btnOk}                            xpath=//li[@class='notification-buttons']/button






### Diversos ###
${Alerta}                           xpath=//div[@class='notifications-item']//p[@class='notifications-item-text']