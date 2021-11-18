##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/M_LOTE_PAGAMENTO_PAGE.robot
Resource    ../1-ATENDIMENTO/ATE_COMPL_STEPS.robot

*** Keywords ***

Atribuir no campo descricao uma nomenclatura |${Descricao}|
    Preencher campo                               ${CampoDescricao}                    ${Descricao}

Aperte em Salvar
    Click no Item                                 ${BtnSalvar}

Acione a tecla pesquisar contas a pagar
    Click no Item                                 ${BtnPesquisarContasPagar} 

Pesquisar por data de vencimento/previsao de pagamento |${DtInicial}| |${DtFinal}|
    Click no Item                                 ${BtnData}
    Click no Item                                 ${CampoSelecionado}                   
    Preencher campo                               ${BtnDataInicial}                    ${DtInicial}
    Preencher campo                               ${BtnDataFinal}                      ${DtFinal}
    Click no Item                                 ${BtnPesquisarDatas}
    

Clicar em associar
    Click no Item                                 ${BtnAssociar}

Aprovar o lote alterando do nivel 0 para o proximo nivel |${Autorizacao}| |${MsgEsperadaConfirmacao}|
    Click no Item                                 ${CheckBox}
    Click no Item                                 ${BtnAlterarNivel}
    Seleciona Item Combobox                       ${BtnAutorizacao}                     ${Autorizacao}
    Click no Item                                 ${BtnOkNivel}
    Valida Mensagem                               ${MsgConfirmacao}                     ${MsgEsperadaConfirmacao}