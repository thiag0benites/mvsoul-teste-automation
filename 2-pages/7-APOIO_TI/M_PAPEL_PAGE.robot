##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Papel
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoDescPapel}                        xpath=//input[@id="inp:dsPapel"]
${BotaoLovProduto}                       xpath=//div[@id="cdProduto"]/button 
${AbaModulo}                             xpath=//a[@id="CNV_PERMISSOES_CNV_PERMISSOES_tab0"]
${CbAutorizaModulo}                      xpath=//button[@data-member="SN_AUTORIZA_MODULO"]
${MensagemToast}                         xpath=//p[@class="notifications-item-text"]   
${AbaTabCampos}                          xpath=//a[@id="CNV_PERMISSOES_CNV_PERMISSOES_tab1"]  
${CbTabInserir}                          xpath=//button[@data-column="TABELAS_grdTabelas_col2"]
${CbColInserir}                          xpath=//button[@data-action="snIncluir_change"][@state="checked"]  
${CbTabAlterar}                          xpath=//button[@data-column="TABELAS_grdTabelas_col3"]
${CbColAlterar}                          xpath=//button[@data-action="colunas_change"][@state="checked"]