##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina M_LOTE
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../Config.robot

*** Variable ***
### Elementos da Página de Fechamento de Lote

${cpDescricao}          id=#frames14
${dtFinal}              id=frames201637146101001
${btnSalvar}            xpath=//*[@id="tb-record-save"]/a
${mensagemEsperada}     class=notifications-item