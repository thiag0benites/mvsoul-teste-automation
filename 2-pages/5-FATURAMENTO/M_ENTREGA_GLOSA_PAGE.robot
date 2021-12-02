##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${CampoRemessa}                       xpath=//input[@id="inp:cdRemessa"]
${CampoDataPrevistaParaPagamento}     xpath=//input[@id="inp:dtPrevistaParaPgto"]
${CampoDataEntrega}                   xpath=//input[@id="inp:dtEntregaDaFatura"]



### Botoes ###
${btnConfEntregaDaGlosa}              xpath=//button[@data-member="BTN_CONFIRMA"]
${btnOK}                              xpath=//li[@class="notification-buttons"]/button




### Diversos ###


${Alerta}                             xpath=//p[@class="notifications-item-text"][contains(text(),"Aviso: Entrega de Glosa confirmada com Sucesso.")]
${DataEntrega}                        xpath=//input[@title="01/12/2021"]



