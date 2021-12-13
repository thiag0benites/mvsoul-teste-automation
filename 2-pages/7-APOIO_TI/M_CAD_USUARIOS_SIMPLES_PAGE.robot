##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../Config.robot

*** Variable ***
### Elementos da Pagina de M_CAD_USUARIOS_SIMPLES
${campoEditavel}                    xpath=//input[@class="editor-text mode-edit"]
${MensagemToast}                    xpath=//p[@class="notifications-item-text"]
${btnCriarUsuarios}                 xpath=//button[@id='btnPesquisar']