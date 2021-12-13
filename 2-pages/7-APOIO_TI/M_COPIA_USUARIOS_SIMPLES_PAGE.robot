##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina M_COPIA_USUARIOS_SIMPLES.robot
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Página de baixa de produtos
${HomeXpathBtnPesquisaInput}             id=menu-filter-1
${HomeXpathBtnPesquisa}                  xpath=//li[@class="menu-search"]
${ScreenCopiaUsuario}                 xpath=//section[@id='workspace-menubar']//a[@title='Cópia Simples de Usuários']//span
${cpUsrOrigem}      xpath=//input[@name="cdUsuarioOrigem"]
${cpUsrDestino}     xpath=//input[@name="cdUsuarioDestino"]
${btnCopia}         xpath=//button[@id="btnCopiaUsuario"]
${btnOk}            xpath=//button[@id="frames6"]
${mensagemPop}      xpath=//*[@class="notifications-item-text"]