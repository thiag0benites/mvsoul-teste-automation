##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de CAD_PRE_PROVISORIO
${CampoNome}                                xpath=//input[@id='inp:nmPrestador']
${CampoCpf}                                 xpath=//input[@id='inp:nrCpfCgc']
${CampoCartaoNS}                            xpath=//input[@id='inp:nrCns']
${CampoPrestador}                           xpath=//input[@id='inp:cdTipPresta']
${CampoCrm}                                 xpath=//input[@id='inp:dsCodigoConselho']
${CodPrestador}                             xpath=//div[@id='cdPrestador']//input