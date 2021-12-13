##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Geração de Repasse
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA/M_PREST_REP_PAGE.robot

*** Variable ***

*** Keywords ***
Pesquisar Criterios de Selecao |${Prestador}|
    Selecionar Item Na Lista            ${BotaoLovModoPesquisa}       ${Prestador}               ${Prestador}
    Click Elemento por titulo           Executar Consulta

Preencher Campos Aba Geral |${RepPrestador}| |${RepSIA}| |${RepSIH}| |${Fornecedor}| |${QuantCH}|
    Selecionar Item Na Lista            ${BotaoLovRepPrestador}       ${RepPrestador}            ${RepPrestador}
    Selecionar Item Na Lista            ${BotaoLovRepSIA}             ${RepSIA}                  ${RepSIA}
    Selecionar Item Na Lista            ${BotaoLovRepSIH}             ${RepSIH}                  ${RepSIH}
    Selecionar Item Na Lista            ${BotaoLovFornecedor}         ${Fornecedor}              ${Fornecedor}
    Selecionar Item Na Lista            ${BotaoLovQuantCH}            ${QuantCH}                 ${QuantCH}

### Keyword para retornar massa de dados para status inicial do teste ###
Alterar Campo Aba Geral |${RepPrestador}|
    Selecionar Item Na Lista            ${BotaoLovRepPrestador}       ${RepPrestador}            ${RepPrestador}