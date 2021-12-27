##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${CampoSolicitaEstoque}                    xpath=//input[@id="inp:cdEstoque"]
${CampoMotivoDevolucao}                    xpath=//input[@id="inp:cdMotDev"]
${CampoSetor}                              xpath=//input[@id="inp:cdSetor"]
${CampoEmEdicao}                           xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input
${CampoQuantidade}                         xpath=//input[@class="editor-text mode-edit"]


${DivProduto}                              xpath=//div[@data-member="CD_PRODUTO"]/..
${DivQuantidade}                           xpath=//div[@data-member="QT_SOLICITADO"]/..



### Botoes ###
${BtnAdicionar}                            xpath=//a[@title="Adicionar"]
${BtnSalvar}                               xpath=//a[@title="Salvar"]

${BtnSetor}                                xpath=//button[@id="rb_TpSolsaiPro_Setor_btn"]
${BtnUrgente}                              xpath=//button[@id="inp:snUrgente_btn"]
${BtnSim}                                  xpath=//button[@class="btn btn-primary"][contains(text(),"Sim")]
${BtnLote}                                 xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button




### Diversos ###
${Alerta}                                  xpath=//p[@class='notifications-item-text']
${Alerta2}                                 xpath=//p[@class="notifications-item-text"][contains(text(),"Atenção")]
   



 


