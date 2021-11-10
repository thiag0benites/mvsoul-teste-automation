##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Alteração da Senha de Acesso
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovUsuario}                        xpath=//div[@id="nmUser"]/button
${CampoSenha}                             xpath=//input[@id="inp:newPass"]
${CampoConfSenha}                         xpath=//input[@id="inp:confNewPass"]
${BotaoConfAlteracao}                     xpath=//button[@id="btnConfirma"]
${MensagemConfirmacao}                    xpath=//div[@class="notifications-item-body"]/p 
${BotaoOk}                                xpath=//button[@class="btn btn-primary"]