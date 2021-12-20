##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/2-ASSISTENCIAL/M_EDITOR_PSDI_PAGE.robot

*** Keywords ***
Versao
    Wait Until Element Is Visible    ${btnPesquisar}    180
    Click no Item    ${btnPesquisar}
    Click no Item    ${BtnExecutar}
    Wait Until Element Is Visible    ${BtnFormatar}    20
    Click no Item    ${BtnFormatar}

Campos do Exame|${Ordem}||${DescricaoDoItem}||${Mnemonico}||${MsgEsperada}|
    Click no Item    ${DivOrdem2}
    Click no Item    ${BtnAdicionar}
    Preencher campo    ${CampoEmEdicao}    ${Ordem}
    Send Keys    enter
    Preencher campo    ${CampoEmEdicao}    ${DescricaoDoItem}
    Send Keys    enter
    Preencher campo    ${CampoEmEdicao}    ${Mnemonico}
    Clicar Botao Salvar |${MsgEsperada}|

Limpar a Massa pra reutilizar|${MsgEsperada2}|
    Sleep    2
    Click no Item    ${CampoMensagemDeAviso}
    Click no Item    ${DivOrdem3}
    Click no Item    ${BtnApagar}
    Clicar Botao Salvar |${MsgEsperada2}|
