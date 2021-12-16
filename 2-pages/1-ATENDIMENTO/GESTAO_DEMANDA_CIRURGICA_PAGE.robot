##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da tela gestão demanda cirurgica
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BtnPesquisa}                    xpath=//button[@id="btnPesquisa"]
${LinhaPaciente}                  xpath=//div[@class="slick-cell b0 f0 selected"]
${BtnAprovar}                     xpath=//div[@data-add-title="Aprovar"]
${Linha2}                         xpath=//div[@id="aprovarOpme"]
${BtnSim}                         xpath=//button[@class="btn btn-primary"][1]
${MsgUsuario}                     xpath=//div[@class="notifications-item"]
${BtnOk}                          xpath=//button[@class="btn btn-primary"]