##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/M_LOTE_PAGAMENTO_PAGE.robot

*** Keywords ***

Atribuir no campo descricao uma nomenclatura 
    Preencher campo                               ${CampoDescricao}                 TESTEFLAVIO3

Aperte em Salvar
    Click no Item                                 ${BtnSalvar}

Acione a tecla pesquisar contas a pagar
    Click no Item                                 ${BtnPesquisarContasPagar} 

Pesquisar por data de vencimento/previsao de pagamento
    Select From List By Label                     ${CampoData}                       Vencimento             
    Preencher campo                               ${BtnDataInicial}                  01/01/2021
    Preencher campo                               ${BtnDataFinal}                    10/11/2021
    Click no Item                                 ${BtnPesquisarDatas} 

Clicar em associar
    Click no Item                                 ${BtnAssociar}

Aprovar o lote alterando do nivel 0 para o proximo nivel
    Click no Item                                 ${CheckBox}
    Click no Item                                 ${BtnAlterarNivel}
    Seleciona Item Combobox                       ${BtnAutorizacao}                    Nivel 1
    Click no Item                                 ${BtnOkNivel}    