##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/4-MATERIAIS/M_DEVOLPRO_PAGE.robot

*** Keywords ***
Destino da Solicitacao|${SolicitaEstoque}||${MotivoDevolucao}||${Setor}|
    Wait Until Element Is Visible    ${BtnSetor}    180
    Click no Item    ${BtnSetor}
    Preencher campo    ${CampoSolicitaEstoque}    ${SolicitaEstoque}
    Send Keys    enter
    Preencher campo    ${CampoMotivoDevolucao}    ${MotivoDevolucao}
    Send Keys    enter
    Click no Item    ${BtnUrgente}
    Preencher campo    ${CampoSetor}    ${Setor}
    Send Keys    enter

Produtos Solicitados|${Produto}||${Lote}||${Quantidade}|
    Click no Item    ${DivProduto}
    #Validar Informacao Item    ${Alerta}    Atenção : A Data/Hora digitada é menor do que a data atual. Confirma ?
    #Click no Item    ${BtnSim}
    Preencher campo    ${CampoEmEdicao}    ${Produto}
    Send Keys    enter
    Selecionar Item Na Lista    ${BtnLote}    ${Lote}    ${Lote}
    Click no Item    ${DivQuantidade}
    Preencher campo    ${CampoQuantidade}    ${Quantidade}
    Click no Item    ${BtnSalvar}

Salvar e Validar Informacao|${MsgEsperada1}||${MsgEsperada2}|
    Valida Mensagem    ${Alerta}    ${MsgEsperada1}
    Valida Mensagem    ${Alerta2}    ${MsgEsperada2}
    Click no Item    ${BtnSim}
