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
${tipoDeprec}           id=tpDepreciacao
${deprecAtrasadas}      xpath=//*[@id="autocomplete_tpDepreciacaoPendentes_ac_2"]
${btnGerarDeprec}       id=btGerar
${listaItensDeprec}     id=grdItdeprecia
${btnDesfazerDeprec}        id=btDesfazer