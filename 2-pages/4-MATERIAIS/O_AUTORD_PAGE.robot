##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: Elementos e metodos da página de Autorizadores das Ordens de Compras
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${inputCodigo}              xpath=//div[@class='slick-cell b0 f0 selected ui-fixed-width active editable']//input
${btnAprovadaTable}         xpath=//div[@class='slick-cell b11 f11 slick-last-cell selected ui-label-position-default mode-edit']//button
${btnConfirmarAutorizacao}  xpath=//button[@id='btnConfirma']