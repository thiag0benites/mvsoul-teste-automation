##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de C_LEITOS
${elemSelecionar}       xpath=(//span[@class="ui-button-icon ui-icon mv-basico-seta_baixo_simples"])[2]
${tipoAcomodacao}       xpath=//a[@id="ui-id-5"]
${codLeito}         xpath=(//*[@class="ui-widget-content ui-corner-all"])[76]