##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Alteracao de Tipo de Atendimento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${DivPrincipal}                                     xpath=//div[@id="CNV_PRINCIPAL"]
${DivNavega}                                        xpath=//div[@id='treeItem']
${SetPainel}                                        xpath=//a[text()="Painel de Leitos"]/../i                                                   
${SetTipoAco}                                       xpath=//a[text()="Tipo de Acomodação"]/../i
${Bercario}                                         xpath=//a[text()="BERCARIO"]

${SetAnalise}                                       xpath=//a[text()="Análise de Ocupação"]/../i
${SetPrestador}                                     xpath=//a[text()="Prestador"]/../i
${Prestador}                                        xpath=//a[text()="ABRAO"]

${SetServico}                                       xpath=//a[text()="Serviço"]/../i
${Servico}                                          xpath=//a[text()="ANGIOLOGIA"]