##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de  Cadastro de Contas a Receber
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA/M_CON_REC_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Processo , Data de Emissão, e Data de Lançamento |2626| |20/12/2021| |21/12/2021|
    Preencher Campo                     ${CampoProcesso}                     ${Processo}
    Preencher Campo                     ${CampoDtEmissao}                    ${DtEmissao} 
    Preencher Campo                     ${CampoDTLancamento}                 ${DtLancamento}

Preencher Tipo de Documento, Cliente, Número do Documento, Série e Conta Contabil |114| |261| |15454| |1515| |472|

    Preencher Campo                     ${CampoTpDocumento}                   ${TpDocumento}
    Preencher Campo                     ${CampoCliente}                       ${Cliente}
    Preencher Campo                     ${CampoNrDocumento}                   ${NrDocumento}
    Preencher Campo                     ${CampoSerie}                         ${Serie}
    Preencher Campo                     ${CampoContaContabil}                 ${ContaContabil}

Informar Valor Bruto , Desconto e Acrescimo |100| |12| |1| |3| |1|
    Preencher Campo                     ${CampoVlBruto}                     ${VlBruto}
    Preencher Campo                     ${CampoDesconto}                    ${Desconto}
    Preencher Campo                     ${CampoVlDesconto}                  ${VlDesconto}              
    Preencher Campo                     ${CampoAcrescimo}                   ${Acrescimo}
    Preencher Campo                     ${CampoVlAcrescimo}                 ${VlAcrescimo}    

Informar Hist Padrão e Observação |49| |OBSERVACOES TESTE AUTOMATIZADO|
     
    Preencher Campo                     ${CampoHistPadrao}                  ${HistPadrao}
    Preencher Campo                     ${CampoObservacao}                  ${Observacao} 

Informar Parcela |100|
    Preencher Campo                     ${CampoParcela}                     ${Parcela}

Informar Detalhamento |44|
    Preencher Campo                     ${CampoDetalhamento}                ${Detalhamento}

Informar Compartilhamento (Setor, ConContabil, ConCusto e Rateio) |690| |30018| |45| |100|
    Preencher Campo                     ${CampoSetor}                       ${Setor}
    Preencher Campo                     ${CampoContabil}                    ${Contabil}
    Preencher Campo                     ${CampoConCusto}                    ${ConCusto}
    Preencher Campo                     ${CampoRateio}                      ${Rateio}

