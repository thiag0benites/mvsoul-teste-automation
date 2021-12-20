##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###


${CampoConta}                            xpath=//input[@id="inp:cdRegAmb"]
${CampoConvenio}                         xpath=//input[@id="inp:cdConvenio"]
${CampoPlano}                            xpath=//input[@id="inp:cdPlano"]
${CampoSubPlano}                         xpath=//input[@id="inp:cdSubPlano"]





${InputDataAgenda}                       xpath=//input[@id="inp:dtAgenda"]
${CampoInputLove}                        xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input





### Botoes ###
${BtnIncluirItem}                        xpath=//button[@id="btnIncluiItem"]
${BtnSalvar}                             xpath=//a[@title="Salvar"]
${BtnExecutarConsulta}                   xpath=//a[@title="Executar Consulta"]
${BtnAdicionar}                          xpath=//a[@title="Adicionar"]



### Diversos ###


${Alerta}                                xpath=//p[@class="notifications-item-text"]






