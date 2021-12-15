##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###


${CampoCompetencia}                      xpath=//input[@id="inp:dtCompetencia"]
${CampoAtendimento}                      xpath=//div[@class="ui-widget ui-textinput ui-label-align-start ui-label-position-top mode-edit ui-widget-active"][@data-member="CD_ATENDIMENTO"]/input
${CampoDataEmissao}                      xpath=//input[@id="inp:dtEmissaoLaudo"]
${CampoDataRealizacao}                   xpath=//input[@id="inp:dtRealizacao"]
${CampoAutorizador}                      xpath=//input[@id="inp:cdAutorizador"]
${CampoPrestadorSolicitante}             xpath=//input[@id="inp:idPrestadorSolicitante"]
${CampoPrestadorPrestadorResponsavel}    xpath=//input[@id="inp:idPrestador"]
${CampoEstabelecimento}                  xpath=//input[@id="inp:cdEstabelecimento"]
${CampoProcedimento}                     xpath=//div[@data-member="CD_PROCEDIMENTO"][@data-row="0"]
${CampoCid10}                            xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input
${CampoQuantidade}                       xpath=//input[@class="editor-text mode-edit"]


${DivQuantidade}                         xpath=//div[@data-member="QT_PROCEDIMENTO"]/..





### Botoes ###
${btnPesquisar}                          xpath=//button[@data-member="BT_ABRE_PESQUISA"]
${btnSim}                                xpath=//button[contains(text(),"Sim")]







### Diversos ###


${Alerta}                                xpath=//p[@class="notifications-item-text"]
${NomePaciente}                          xpath=//input[@id="inp:nmPaciente"][@title="EMILLY DOS SANTOS MOTTA"]





