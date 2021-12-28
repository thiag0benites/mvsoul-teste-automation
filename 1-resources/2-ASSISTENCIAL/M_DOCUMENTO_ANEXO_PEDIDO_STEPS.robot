##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Consulta de Anexo de Pedidos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste

Library    SeleniumLibrary
Resource          ../../2-pages/2-ASSISTENCIAL/M_DOCUMENTO_ANEXO_PEDIDO_PAGE.robot
Resource    ../1-ATENDIMENTO/M_ANEXO_ATENDIMENTO_STEPS.robot


*** Variable ***

*** Keywords ***

Preencher Pedido e acessar a Pagina |${Pedido}|
    Click Elemento por titulo    Procurar
    Preencher Campo            ${CampoPedido}            ${Pedido}
    Click Elemento por titulo    Executar Consulta

    #Run Keyword If    Element Should Be Visible    ${BotaoOk}
    Click no Item              ${BotaoOk} 
    Click no Item              ${BotaoAcesso}
    
Visualizar Documento
    Click no Item               ${BotaoVisualizar}
    Sleep    3
    Switch Window    NEW
    Sleep    2
    Capture Page Screenshot

Anexar Documento e Validar |${Tipo}| |${Stat}| |${Descr}| |${MensagemSucesso}|
    Click no Item            ${BotaoNovo}
    Sleep    2
    Preencher Campo          ${CampoTipo}              ${Tipo}
    Preencher Campo          ${CampoStatus}            ${Stat}
    Preencher Campo          ${CampoDesc}              ${Descr}
    Send Keys    TAB
    Send Keys    TAB
    Send Keys    TAB
    Send Keys    ENTER
    Sleep    2
    Send Keys    1
    Send Keys    Enter
    Sleep    3
    Genericos.Valida Mensagem    ${MensagemToast}    ${MensagemSucesso}
    Click no Item        ${BotaoOk} 


