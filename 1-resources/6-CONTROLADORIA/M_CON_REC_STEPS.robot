##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de  Cadastro de Contas a Receber
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA/M_CON_REC_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Processo , Data de Emissão, e Data de Lançamento |${Processo}| |${DtEmissao}| |${DtLancamento}|
    Preencher Campo                     ${CampoProcesso}                     ${Processo}
    Preencher Campo                     ${CampoDtEmissao}                    ${DtEmissao} 
    Preencher Campo                     ${CampoDTLancamento}                 ${DtLancamento}

Preencher Tipo de Documento, Cliente, Número do Documento, Série e Conta Contabil |${TpDocumento}| |${Cliente}| |${NrDocumento}| |${Serie}| |${ContaContabil}|

    Preencher Campo                     ${CampoTpDocumento}                   ${TpDocumento}
    Preencher Campo                     ${CampoCliente}                       ${Cliente}
    Preencher Campo                     ${CampoNrDocumento}                   ${NrDocumento}
    Preencher Campo                     ${CampoSerie}                         ${Serie}
    Preencher Campo                     ${CampoContaContabil}                 ${ContaContabil}

Informar Valor Bruto , Desconto e Acrescimo |${VlBruto}| |${Desconto}| |${VlDesconto}| |${Acrescimo}| |${VlAcrescimo}|
    Preencher Campo                     ${CampoVlBruto}                     ${VlBruto}
    Preencher Campo                     ${CampoDesconto}                    ${Desconto}
    Click no Item                       ${CampoVlBruto}
    Preencher Campo                     ${CampoVlDesconto}                  ${VlDesconto}            
    Preencher Campo                     ${CampoAcrescimo}                   ${Acrescimo}
    Click no Item                       ${CampoVlBruto}
    Sleep   5
    Preencher Campo                     ${CampoVlAcrescimo}                 ${VlAcrescimo}    

Informar Hist Padrão e Observação |${HistPadrao}| |${Observacao}|
     
    Preencher Campo                     ${CampoHistPadrao}                  ${HistPadrao}
    Preencher Campo                     ${CampoObservacao}                  ${Observacao} 

#Informar Parcela |${Parcela}|
 #   Click no Item                       ${BotaoParcelamento}
  #  Preencher Campo                     ${CampoParcela}                     ${Parcela}

Informar Detalhamento |${Detalhamento}|
    Click no Item                       ${CampoDetalhamento}
    Selecionar Item Na Lista            ${BotaoDetalhamento}                ${Detalhamento}             ${Detalhamento}
    #Preencher Campo                     ${CampoDetalhamento}                ${Detalhamento}

Informar Compartilhamento (Setor, ConContabil, ConCusto e Rateio) |${Setor}| |${Contabil}| |${ConCusto}| |${Rateio}|
    Click no Item                       ${BotaoCompartilhamento} 
    Selecionar Item Na Lista            ${BotaoSetor}                       ${Setor}             ${Setor}
#    Preencher Campo                     ${CampoContabil}                    ${Contabil}
    #Click no Item                       ${CampoContabilDes}
    #Selecionar Item Na Lista            ${CampoContabil}                    ${Contabil}          ${Contabil}
    Click no Item                       ${CampoCusto}
    Selecionar Item Na Lista            ${CampoConCusto}                    ${ConCusto}          ${ConCusto}
    Preencher Campo                     ${CampoRateio}                      ${Rateio}

Salvar Registro |${MensagemRegistroSalvo}|
    Click Elemento por titulo           Salvar
    Valida Mensagem                     ${RegistroSalvo}                    ${MensagemRegistroSalvo}
    Click no Item                       ${LimparSim}
