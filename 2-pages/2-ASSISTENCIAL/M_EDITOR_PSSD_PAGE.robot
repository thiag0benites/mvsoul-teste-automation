##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Consulta de Itens Prescritos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoGravar}    xpath=//button[@data-member="BTN_GRAVAR"]
${Editor}         xpath=//div[@id="formEditor"]
${DivAnte}        xpath=//div[@id="dspCarregando"]
