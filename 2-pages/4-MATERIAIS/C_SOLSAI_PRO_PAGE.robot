##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Consulta de  Solicitações de Produtos ao Estoque
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${RbPacienteSol}                                 xpath=//button[@id="rb_TpSolsaiPro_Paciente_btn"]
${RbSetorSol}                                    xpath=//button[@id="rb_TpSolsaiPro_Setor_btn"]
${RbEstoque}                                     xpath=//button[@id="rb_TpSolsaiPro_Estoque_btn"]
${RbEmpresa}                                     xpath=//button[@id="rb_TpSolsaiPro_Empresa_btn"]
${RbPacienteDev}                                 xpath=//button[@id="rb_TpSolsaiPro_PacienteDev_btn"]
${RbSetorDev}                                    xpath=//button[@id="rb_TpSolsaiPro_SetorDev_btn"]
${BotaoLovEstoqueSol}                            xpath=//div[@id="cdEstoque"]/button
${BotaoImprimeSolicitacao}                       xpath=//button[@id="btnImprimeSolicitacao"]
${BotaoImprimir}                                 xpath=//button[@data-member="BTN_IMPRIMIR"]
${MensagemToast}                                 xpath=//p[@class="notifications-item-text"]


