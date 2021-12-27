##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Produtos do Estoque
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoCdSolicitacao}    xpath=//input[@id="inp:cdSolCom"]
${BotaoAbrirCotacao}    xpath=//button[@id="btnEnvioSol"]
${CampoFornecedor}    xpath=//div[contains(@aria-labelledby, "grdFornCol_col0_lbl")]
${BotaoLovEdit}    xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button
${CampoTpComunicacao}    xpath=//div[@data-member="TP_COMUNICACAO"][@class="ui-text"]/..
${CampoEdit}      xpath=//div[@class="ui-combobox ui-buttoninput ui-widget mode-edit"]/input
${CampoObservacao}    xpath=//input[@id="inp:dsObsCotacao"]
${BotaoConfFornecSolic}    xpath=//button[@id="TAB_NOVOS_btnMail"]
${BotaoTodosOsProdutos}    xpath=//li[@class="notification-buttons"]/button[contains(text(), "Todos os Produtos")]
#${BotaoTodosOsProdutos}    xpath=//li[@class="notification-buttons"]/button[contains(text(), "Apenas Atividade Fornecedor")]
${BotaoSair}      xpath=//button[@data-member="BTN_SAIR"]
${CampoDescFornecedor}    xpath=//div[@data-member="DSP_NM_FANTASIA"][@title="MEDFAM MEDICINA"]/..
${AbaNovos}       xpath=//a[@id="CGPAGE_2_CGPAGE_2_tab0"]
${BotaoNotificao}    xpath=//a[@class="notification-toggle"]
