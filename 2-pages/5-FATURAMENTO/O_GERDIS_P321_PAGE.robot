##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${CampoCopias}                     xpath=//input[@id="inp:qtdCopy"]
${CampoTipoDaFatura}               xpath=//div[@data-name="tpComplexidadeProcedimento"]/input
${CampoAutorizacao}                xpath=//div[@data-name="tpAutorizacao"]/input


### Botoes ###
${btnCodigo}                       xpath=//div[@id="cdFatSia"]//button
${DivTipoDaFatura}                 xpath=//div[@data-name="tpComplexidadeProcedimento"]
${DivAutorizacao}                  xpath=//div[@data-name="tpAutorizacao"]
${BtnIncluiRegistrosSelecionados}  xpath=//div[@class="ui-layout-vertical ui-box-vertical ui-panel ui-widget ui-box-fixed-size"]//button
${BtnIncluiConsistir}              xpath=//button[@data-member="BTN_CONSISTE_GERAR"]
${BtnOK}                           xpath=//li[@class="notification-buttons"]//button




### Diversos ###
${CheckBoxRemessaDisponivel1}      xpath=//div[@data-row="0"]/button[@data-column="PAGE_REMESSA_BPA_grdRemessaBpa_col3"]
#${CheckBoxRemessaDisponivel2}      xpath=//div[@class="slick-cell b3 f3 slick-last-cell ui-fixed-width"]//button
${CheckBoxRemessasSelecionadas1}   xpath=//div[@data-row="0"]/button[@data-column="PAGE_REMESSA_BPA_grdSelRemessaBpa_col3"]
#${CheckBoxRemessasSelecionadas2}   xpath=//div[@data-row="1"]//button[@data-column="PAGE_REMESSA_BPA_grdSelRemessaBpa_col3"]

${Alerta}                          xpath=//p[@class="notifications-item-text"]




