##################################################################################################################################
# Autor: Gabriel Passos
# Decrição: Elementos e metodos da pagina C_LOG_EXAME_RX
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Página de C_LOG_EXAME_RX
${cpPedido}       id=inp:cdPedLab
${btnPesqPedido}    id=btnPesquisar
${divListaExame}    xpath=(//div[@class='grid-canvas grid-canvas-top grid-canvas-left'])[1]
${divListaLog}    xpath=(//div[@class='grid-canvas grid-canvas-top grid-canvas-left'])[2]
${divDataLog}     xpath=//div[@class='slick-cell b0 f0 selected ui-fixed-width']//div[@data-row='0']
${divDescrMov}    xpath=//div[@class='slick-cell b1 f1 selected']//div[@data-row='0']
${divUsuario}     xpath=//div[@class='slick-cell b2 f2 slick-last-cell selected ui-fixed-width']//div[@data-row="0"]
