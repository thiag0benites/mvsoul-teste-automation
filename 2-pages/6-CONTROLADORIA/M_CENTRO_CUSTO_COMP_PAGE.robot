##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da tela centro de custo
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***
${CampoDescricao}                      xpath=//input[@id="inp:nmSetor"]
${CampoHierarquico}                    xpath=//input[@id="inp:cdCenCus"]
${BtnCentroCusto}                      xpath=//div[@id="cdSetorCusto"]//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"]
${CampoCentroCusto}                    xpath=//div[@class="slick-cell b0 f0 selected"]
${BtnOk}                               xpath=//button[@id="btok"]
${BtnGrupoCusto}                       xpath=//div[@id="cdGrupoDeCusto"]//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"]
${CampoGrupoCusto}                     xpath=//div[@class="slick-cell b0 f0 slick-last-cell selected"]
${BtnCalculaEvento}                    xpath=//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"]//span[@class="ui-button-icon ui-icon mv-basico-seta_baixo_simples"]
${CampoSelecionadoCalculaEvento}       xpath=//input[@title="Sim"][@id="snCalculoEvento_ac"]
${CampoSelecionadoAceitaLancamento}    xpath=//input[@id="snAceitaLancamento_ac"][@title="Sim"] 
${BtnSalvar}                           xpath=//i[@class="mv-basico-salvar"]
${MsgConfirmacao}                      xpath=//p[@class="notifications-item-text"]