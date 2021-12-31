##################################################################################################################################
# Autor: Gabriel Passos
# Decrição: Elementos e metodos da pagina M_CONFCONS
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Página M_CONFCONS
${btnCancelConf}       id=rb_SnConfCanc_SnCancela_btn
${btnCheckBox}         xpath=(//div[@class='ui-checkbox'])[6]
${btnCancelConsumo}    xpath=//button[@data-member='BTN_CANCELAR_CONSUMO']
${selectcheckBox}      xpath=//span[@class='ui-button-icon ui-icon fa fa-check']
