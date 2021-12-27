##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###

${CampoCodigoAvisoCirurgia}                   xpath=//input[@id="inp:cdAvisoCirurgia"]
${CampoCodigo}                                xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input
${CampoQuantidade}                            xpath=//input[@class="editor-text mode-edit"]


${DivCodigo325}                               xpath=//div[@title="325"]

### Botoes ###
${BtnPesquisar}                               xpath=//a[@title="Procurar"]
${BtnKits}                                    xpath=//button[@id="btnkit"]
${BtnAdicionar}                               xpath=//a[@title="Adicionar"]
${BtnRetornar}                                xpath=//button[@id="btnRetornar"]
${BtnSim}                                     xpath=//button[contains(text(),"Sim")]
${BtnApagar}                                  xpath=//a[@title="Apagar"]
${BtnExecutarConsulta}                        xpath=//a[@title="Executar Consulta"]









### Diversos ###


${Alerta}                                     xpath=//p[@class="notifications-item-text"]





