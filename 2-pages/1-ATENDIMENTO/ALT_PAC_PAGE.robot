##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${CampoObservacaoDaAlta}                      xpath=//textarea[@id="inp:dsObsAlta"]


### Botoes ###
${BtnAtendimento}                         xpath=//div[@data-member="CD_ATENDIMENTO"]//button
${BtnMotivoDaAlta}                        xpath=//div[@id="cdMotAlt"]//button
${BtnTipoDeLimpeza}                       xpath=//div[@id="cdTipoLimpeza"]//button
${BtnProcedimentoDaAlta}                  xpath=//div[@id="dspCdProInt"]//button
${BtnProcedimentoCIH}                     xpath=//div[@id="dspCdSsmCih"]//button
${BtnAlerta}                              xpath=//li[@class='notification-buttons']//button
${BtnTipoDeEsquema}                       xpath=//div[@id='PRESCRICAO_cdTipEsq']//button
${BtnConfirmarAlta}                       xpath=//button[@data-member="BTN_CONFIRMAR"]
${BtnSaidaDoRelatorio}                    xpath=//div[@data-member="TP_SAIDA"]//input
${BtnImprimir}                            xpath=//div[@id="CV_PADRAO_PARAMETER"]//button[@data-member="BTN_IMPRIMIR"]
${BtnSair}                                xpath=//div[@id="CV_PADRAO_PARAMETER"]//button[@data-member="BTN_SAIR"]
${BtnOK}                                  xpath=//button[@class="btn btn-primary"]
${BtnCIDAtendimento}                      xpath=//button[@id="btnCidsec"]
${BtnCIDPrincipal}                        xpath=//div[@data-member="CD_CID"]//button


### Diversos ###
${Alerta}                                 xpath=//p[@class='notifications-item-text']
   






