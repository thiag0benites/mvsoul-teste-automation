##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###

${CampoEmEdicao}                              xpath=//input[@class="editor-text mode-edit"]
${CampoMensagemDeAviso}                       xpath=//input[@id="inp:dsMensagemAviso"]



${DivOrdem2}                                  xpath=//div[@title="2"]
${DivOrdem3}                                  xpath=//div[@title="3"]/..

### Botoes ###
${BtnPesquisar}                               xpath=//a[@title="Procurar"]
${BtnExecutar}                                xpath=//a[@title="Executar Consulta"]
${BtnFormatar}                                xpath=//button[@id="btnFormatar"]
${BtnAdicionar}                               xpath=//a[@title="Adicionar"]
${BtnSalvar}                                  xpath=//a[@title="Salvar"]
${BtnApagar}                                  xpath=//a[@title="Apagar"]










### Diversos ###


${Alerta}                                     xpath=//p[@class="notifications-item-text"]





