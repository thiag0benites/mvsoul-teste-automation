##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../Config.robot

*** Variable ***
### Elementos da Página de Calculo da Depreciação do Bem 

${TelaDepreciacao}      xpath=//*[@id="dtDeprecia"]/label
${mesAnoGeracao}        id=inp:dtDeprecia
${realDeprec}           id=inp:nmSolicitante
${empresa}              id=inp:cdMultiEmpresa
${selectTipDeprec}      xpath=//*[@id="tpDepreciacao"]
${tipoDeprec}           xpath=//*[@id="tpDepreciacao"]/button
${selectDeprecAtrasadas}        xpath=//*[@id="tpDepreciacaoPendentes"]
${deprecAtrasadas}      xpath=//*[@id="inp:tpDepreciacaoPendentes"]/button
${btnGerarDeprec}       id=btGerar
${listaItensDeprec}     xpath=//*[@id="grdItdeprecia"]/div[4]
${btnDesfazerDeprec}        id=btDesfazer