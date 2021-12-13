##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Monitoramento de Solicitações de Transferência
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_MON_SOLIC_TRANSF_PAGE.robot

*** Variable ***

*** Keywords ***
Validar Informacoes Apresentadas na Tela |${Paciente}| |${UnidInterAtual}| |${LeitoAtual}|
    Validar Elemento Pelo Titulo    ${Paciente}
    Validar Elemento Pelo Titulo    ${UnidInterAtual}
    Validar Elemento Pelo Titulo    ${LeitoAtual}

Clicar Botao Detalhar |${TelaTransfPaciente}|
    Click no Item    ${BotaoDetalhar}
    Validar Acesso a Tela |${TelaTransfPaciente}|

Validar Dados da Transferencia |${Paciente}| |${UnidInterSolic}| |${MotivoTransf}|
    Element Should Be Visible    //*[@id="dspNomePaciente"]/span[@title="${Paciente}"]
    Element Should Be Visible    //*[@id="dsTipCom"]/span[@title="${UnidInterSolic}"]
    Element Should Be Visible    //*[@id="dsMotivoTransfLeito"]/span[@title="${MotivoTransf}"]

Clicar Botao Sair |${NomeTela}|
    Click no Item    ${BotaoSair}
    Validar Acesso a Tela |${NomeTela}|
