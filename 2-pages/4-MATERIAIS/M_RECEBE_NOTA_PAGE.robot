##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Recebimento de produtos para tombamento 
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${btnRealizaTombamento}              xpath=//button[@data-member='BTN_TOMBAR']
${inputDescricaoPlaqueta}            id=inp:bens_dsPlaqueta
${inputNumeroSerie}                  id=inp:nrSerie
${inputModelo}                       id=inp:dsModelo
${inputCentroCusto}                  id=inp:cdSetor
${inputTipoAquisicao}                id=inp:cdTipoAquisicao
${inputLocalidade}                   id=inp:cdLocalidade
${inputclassificacao}                id=inp:cdCapitulo
${inputSubClassificacao}             id=inp:cdSubCap
${abaManutencao}                     id=CNV_INFORMACOES_CNV_INFORMACOES_tab2
${inputAnos}                         id=inp:nrAnosUtil
${inputDias}                         id=inp:nrDiasPreventiva
${inputVencimentoGarantia}           id=inp:dtVctoGarantia
${mensagemNotification}              xpath=//div[@class='notifications-item']
