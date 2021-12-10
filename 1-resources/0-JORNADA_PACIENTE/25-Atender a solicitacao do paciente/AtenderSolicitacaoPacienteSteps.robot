##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../../2-pages/0-JORNADA_PACIENTE/AtenderSolicitacaoPacientePage.robot

*** Variable ***

*** Keywords ***
Informar o código no campo |solicitação|

Clicar no botao [Visualizar produtos]

Clicar no botao [Retornar]
    
Clicar no botao [Cod. do Produto]
    
Informar os campos Produto |${dados}[atendSolicPacProduto]|, Lote |${dados}[atendSolicPacLote]|, Qtde. Disp |${dados}[atendSolicPacQtdeDisp]|