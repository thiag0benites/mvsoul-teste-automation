##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Cadastro do Fornecedor/Cliente
###################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoNmFornecedor}    xpath=//input[@id="inp:nmFornecedor"]
${CampoNmFantasia}    xpath=//input[@id="inp:nmFantasia"]
${BotaoLovConstituicao}    xpath=//div[@id="cdConstituicaoEmpresa"]/button
${CampoCNPJ}      xpath=//input[@id="inp:nrCgcCpf"]
${CampoInsEstadual}    xpath=//input[@id="inp:nrInscEst"]
${CampoInsmunicipal}    xpath=//input[@id="inp:nrInscMun"]
${CampoCEP}       xpath=//input[@id="inp:nrCep"]
${CampoNumero}    xpath=//input[@id="inp:nrEndereco"]
${CampoTpPagamento}    xpath=//input[@id="tpPagamento_ac"]
${CampoSimplesNacional}    xpath=//input[@id="cdSimplesNacional_ac"]
${AbaContaContabil}    xpath=//a[@id="TAB_PAGE_FORNECEDOR_TAB_PAGE_FORNECEDOR_tab6"]
${CampoCdReduzido}    xpath=//div[@data-member="CD_REDUZIDO"]/..
${BotaoLovEdit}    xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button
${CampoTpConta}    xpath=//div[@data-member="TP_CONTA"]/..
${CampoComboBoxEdit}    xpath=//div[@class="ui-combobox ui-buttoninput ui-widget mode-edit"]/input
${AbaContaCorrete}    xpath=//a[@id="TAB_PAGE_FORNECEDOR_TAB_PAGE_FORNECEDOR_tab8"]
${CampoBanco}     xpath=//div[@data-member="CD_BANCO"][@class="ui-text"]/..
${CampoAgencia}    xpath=//div[@data-member="CD_AGENCIA"]/..
${CampoDvAgencia}    xpath=//div[@data-member="DV_AGENCIA"]/..
${CampoDescAgencia}    xpath=//div[@data-member="DS_AGENCIA"][@class="ui-text"]/..
${CampoNrConta}    xpath=//div[@data-member="NR_CONTA"][@class="ui-text"]/..
${CampoDvConta}    xpath=//div[@data-member="DV_CONTA_CORRENTE"]/..
${CampoEdit}      xpath=//input[@class="editor-text mode-edit"]
${AbaRamoAtividade}    xpath=//a[@id="TAB_PAGE_FORNECEDOR_TAB_PAGE_FORNECEDOR_tab0"]
${CampoRamoAtividade}    xpath=//div[@data-member="CD_RAMO_ATIVIDADE"]/..
${BotaoSim}       xpath=//li[@class="notification-buttons"]/button[text()="Sim"]
