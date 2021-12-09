##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de  Configuração do Sistema Contábil
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA/CONFIG_FCCT_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Processo , Data de Emissao, e Data de Lancamento |${Processo}| |${DtEmissao}| |${DtLancamento}|
    Preencher Campo                     ${CampoProcesso}                     ${Processo}
    Preencher Campo                     ${CampoDtEmissao}                    ${DtEmissao} 
    Preencher Campo                     ${CampoDTLancamento}                 ${DtLancamento}

Preencher Tipo de Documento, Cliente, Numero do Documento, Serie e Conta Contabil |${TpDocumento}| |${Cliente}| |${NrDocumento}| |${Serie}| |${ContaContabil}|

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
    Sleep   2
    Preencher Campo                     ${CampoVlAcrescimo}                 ${VlAcrescimo}    

Informar Hist Padrao e Observacao |${HistPadrao}| |${Observacao}|
     
    Preencher Campo                     ${CampoHistPadrao}                  ${HistPadrao}
    Preencher Campo                     ${CampoObservacao}                  ${Observacao} 

Informar Parcela |${Parcela}|
    Click no Item                       ${AbaParcelamento}
    Click no Item                       ${CampoParcelaDes}
    Sleep   1
    Click no Item                       ${CampoParcelaDes}
    Preencher Campo                     ${CampoParcela}                     ${Parcela}

Informar Detalhamento |${Detalhamento}|
    Click no Item                       ${AbaDetalhamento}
    Selecionar Item Na Lista            ${BotaoDetalhamento}                ${Detalhamento}             ${Detalhamento}
    
Informar Compartilhamento (Setor, ConContabil, ConCusto e Rateio) |${Setor}| |${Contabil}| |${ConCusto}| |${Rateio}|
    Click no Item                       ${AbaCompartilhamento} 
    Selecionar Item Na Lista            ${BotaoSetor}                       ${Setor}             ${Setor}
    Click no Item                       ${CampoCusto}
    Selecionar Item Na Lista            ${CampoConCusto}                    ${ConCusto}          ${ConCusto}
    Click no Item                       ${CampoRateioDes}   
    Preencher Campo                     ${CampoRateio}                      ${Rateio}

Salvar Registro |${MensagemRegistroSalvo}|
    Click Elemento por titulo           Salvar
    Valida Mensagem                     ${RegistroSalvo}                    ${MensagemRegistroSalvo}

