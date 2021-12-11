##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Cadastro de CID
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoCodigo}                            xpath=//input[@id="inp:cdGruCid"]
${CampoDescricao}                         xpath=//input[@id="inp:dsGruCid"]
${CampoGO}                                xpath=//input[@id="snGo_ac"]
${CampoInicial}                           xpath=//input[@id="inp:dsCdSgruCidIni"]
${CampoFinal}                             xpath=//input[@id="inp:dsCdSgruCidFim"]
${CampoIdioma}                            xpath=//input[@id="inp:dsIdioma"]
${CampoCdCategoria}                       xpath=//div[@data-member="CD_SGRU_CID"]/..
${CampoEditavel}                          xpath=//input[@class="editor-text mode-edit"]
${CampoDescCategoria}                     xpath=//div[@data-member="DS_SGRU_CID"]/..
${CampoCdCatCID0}                         xpath=//div[@data-member="CD_SGRU_CIDO"]/..
${CampoCdCID}                             xpath=//div[@data-member="CD_CID"]/..
${CampoDescCID}                           xpath=//div[@data-member="DS_CID"]/..
${CampoCdCID0}                            xpath=//div[@data-member="CD_CIDO"]/..




