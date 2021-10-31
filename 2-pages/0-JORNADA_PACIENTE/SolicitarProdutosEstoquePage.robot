##################################################################################################################################
# Autor: Thiago Benites
# Decrição: Elementos e metodos da página de Solicitar Produtos ao estoque
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de solicitar produtos ao estoque
${dtAvisCirurgia}           id=inp:dtAvisoCirurgia
${checkboxEstoque}          id=rb_TpSolsaiPro_Estoque_btn
${inputRadioEstoque}        id=inp:tpSolsaiPro_rb_TpSolsaiPro_Estoque
${inputSolEstoque}          id=inp:cdEstoque
${inputEstoqueDestino}      id=cdEstoqueSolicitante
${inputSetor}               id=inp:cdSetor
${inputProduto}             id=#frames137
${inputQtde}                id=#frames189