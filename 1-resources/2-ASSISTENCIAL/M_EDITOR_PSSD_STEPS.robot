##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Consulta de Itens Prescritos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_EDITOR_PSSD_PAGE.robot

*** Variable ***

*** Keywords ***
Acessar e Inserir Nova Informacao |${Botao}|
    Wait Until Element Is Visible    ${Editor}    500
    Click no Item    ${DivAnte}
    Click no Item    ${Editor}
    Sleep    5
    Click Elemento por titulo    ${Botao}
    Send Keys    1
    Sleep    3

Gravar e Validar |${MsgSalva}|
    Click no Item    ${BotaoGravar}
    Valida Mensagem    ${MensagemToast}    ${MsgSalva}
