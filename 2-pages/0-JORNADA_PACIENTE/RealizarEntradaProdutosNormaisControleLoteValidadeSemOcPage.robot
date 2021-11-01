##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da página de Realizar entrada de produtos normais controle de lote e validade sem OC
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de Realizar entrada de produtos normais controle de lote e validade sem OC

${btnVoltarJust}        id=btnVoltarJustificativa
${btnTipoDoc}        xpath=//*[@id="entPro_cdTipDoc"]/button/span[1]
${inputTipoDoc}        id=inp:entPro_cdTipDoc
${inputTipoDocFrame}        id=#filterLov
${inputEstoque}        id=inp:entPro_cdEstoque
${inputCodJust}        id=inp:cdJustifica
${justCompra}          id=grdLov
${btnOkJust}           id=btok
${btnConfirmaJust}          id=entPro_btnConfirma
${inputNrDoc}               id=inp:entPro_nrDocumento
${inputNrSerie}             id=inp:entPro_nrSerie
${inputNrFornecedor}        id=inp:entPro_cdFornecedor
${inputDtEmissao}           id=inp:dtEmissao
${btnProdutos}              id=btnProdutos
${inputCFOP}                id=inp:nrCfop
${inputModelo}              id=inp:cdModeloEntrada
${inputVlrTotNota}          id=inp:entPro_vlTotal
${btnSim}                   id=frames96
${btnSairProd}              id=btnSairItentPro


