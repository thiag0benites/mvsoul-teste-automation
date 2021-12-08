##################################################################################################################################
# Autor: Marcos Costa
# Decrição: Solicitar pedido de exame em atendimento por convenio lançando cobrança para conta do convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

# acesso Alternativo a tela
${HomeXpathBtnPesquisaInput}             id=menu-filter-1
${HomeXpathBtnPesquisa}                  xpath=//li[@class="menu-search"]
${ScreenPedidoExame}                     xpath=//section[@id='workspace-menubar']//a[@title='Pedidos de Exames / Atendimento Externo']//span
${NmPaciente}                            xpath=//*[@id="inp:dsNomeFiltro"]
${CpPeso}                                xpath=//*[@id="inp:nrPeso"]
${CpAltura}                              xpath=//*[@id="inp:nrAltura"]

#Campos
${CpListConv}        xpath=//*[@id="#filterLov"]

#Botões
${BtPaciente}        xpath=//*[@id="btnPaciente"]
${BtPesquisar}       xpath=//*[@id="RECEPCAO_btnPesquisar"]
${BtPedido}          xpath=//*[@id="RECEPCAO_btnSelecionar"]
${BtConvenio}        xpath=//*[@id="cdConvenio"]/button/span[1]
${BtFiltro}          xpath=//*[@id="btfilter"]
${BtOkConv}          xpath=//*[@id="btok"]

# Abas
${AbPacientRecep}   xpath=//*[@id="CNV_PRINCIPAL_CNV_PRINCIPAL_tab1"]

# Plano
${BtConpla}           xpath=//*[@id="cdConPla"]/button/span[1]
${BtLovConpla}        xpath=//*[@id="#filterLov"]
${BtFilterConpla}     xpath=//*[@id="btfilter"]
${BtOkConpla}         xpath=//*[@id="btok"]

# Medico solicitante Pedido
${BtPrest}            xpath=//*[@id="cdPrestador"]/button/span[1]
${BtLovPrest}         xpath=//*[@id="#filterLov"]
${BtFilterPrest}      xpath=//*[@id="btfilter"]
${BtOkPrest}          xpath=//*[@id="btok"]

# Setor Solicitante
${BtSetor}        xpath=//*[@id="cdSetor"]/button/span[1]
${BtLovSetor}     xpath=//*[@id="#filterLov"]
${BtFilSetor}     xpath=//*[@id="btfilter"]
${BtOkSetor}      xpath=//*[@id="btok"]

# Tipo de Solicitação
${BtSolic}       xpath=//*[@id="tpSolicitacao"]/button/span[1]
${CpTpSolic}     xpath=//*[@id="tpSolicitacao_ac"]    

# Local de Coleta 
${BtLocalCol}        xpath=//*[@id="cdLocalColeta"]/button/span[1]
${BtLovCol}          xpath=//*[@id="#filterLov"]
${BtFilterCol}       xpath=//*[@id="btfilter"]
${BtOkCol}           xpath=//*[@id="btok"]

# Data da Coleta e Data de Validade da coleta
${DatColeta}         xpath=//*[@id="inp:dtColeta"] 
${DatValidade}       xpath=//*[@id="inp:dtValidade"] 

# Exame Solicitado
${BtGrdExa}           xpath=//*[@id="EXAMES_grdItpedLab8"]/div[4]/div[3]/div/div/div[1]
${BtExame}            xpath=//*[@id="EXAMES_grdItpedLab8"]/div[4]/div[3]/div/div/div[1]/div/button/span[1]
${BtLovExa}           xpath=//*[@id="#filterLov"]
${BtFilterExa}        xpath=//*[@id="btfilter"]
${BtOkExa}            xpath=//*[@id="btok"]

# Medico Exame Solicitante
${BtGrdPrest}         xpath=//*[@id="EXAMES_grdItpedLab8"]/div[4]/div[3]/div/div/div[7]
${BtGrdPresSel}       xpath=//*[@id="EXAMES_grdItpedLab8"]/div[4]/div[3]/div/div/div[7]/div/button/span[1]
${BtLovPrestSel}      xpath=//*[@id="#filterLov"]
${BtFilterCel}        xpath=//*[@id="btfilter"]
${BtOkPrestCel}       xpath=//*[@id="btok"]

# Aba Perguntas
${BtAbaPer}           xpath=//*[@id="DETALHES_DETALHES_tab1"]
${CpAbaResp}          xpath=//*[@id="PERGUNTAS_grdPerPedlab"]/div[4]/div[3]/div/div/div[3]/div/button/span[1]
${BtLovResp}          xpath=//*[@id="#filterLov"]
${BtFilterResp}       xpath=//*[@id="btfilter"]
${BtOkResp}           xpath=//*[@id="btok"]
${BalaoExaLiberado}   xpath=//*[@id="frames105"]

# Conta Convenio
${BtContaConv}        xpath=//*[@id="btnContaConvenio"]
${BtSairRegAmb}       xpath=//li[@id='tb-exit'][@class='toolbar-item']
${MgsVerif}           xpath=//p[@class='notifications-item-text']
${BtSairsim}          xpath=//*[@id="frames132"]