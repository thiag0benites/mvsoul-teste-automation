##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###


${CampoEmEdicao}                         xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input
${CampoDataFechamentoEntrega}          xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"][@row="0"]
${CampoStatus}                           xpath=//div[@data-member="DS_STATUS"][@data-row="0"][@title="ABERTA"]




${DivDataFechamento}                     xpath=//div[@data-member="DT_FECHAMENTO"]/..
${DivDataEntrega}                        xpath=//div[@data-member="DT_ENTREGA_DA_FATURA"][@data-row="0"]/..






### Botoes ###
${btnAdicionar}                          xpath=//a[@title="Adicionar"]
${btnSalvar}                             xpath=//a[@title="Salvar"]
${btnApagar}                             xpath=//a[@title="Apagar"]






### Diversos ###


${Alerta}                                xpath=//p[@class="notifications-item-text"]
${AlertaDeletaLinha}                     xpath=//p[@class="notifications-item-text"][contains(text(),"Nenhum registro foi recuperado")]





