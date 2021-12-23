##################################################################################################################################
# Autor: Marcos Costa
# Decrição: Validar a pesquisa por atendimento de pedido de exame de imagem para confirmação de exames realizados.
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
# SetorEnvio
${CpSetorEnvioA}    xpath=//*[@id="inp:cdSetor"]
${CpSetorEnvioB}    xpath=//*[@id="cdSetor"]/button/span[1]
${CpSetorEnvioC}    xpath=//*[@id="#filterLov"]
${CpSetorEnvioD}    xpath=//*[@id="btfilter"]
${CpSetorEnvioE}    xpath=//*[@id="btok"]
# SetorDestino
${CpSetorDestinoA}    xpath=//*[@id="inp:cdSetorDestino"]
${CpSetorDestinoB}    xpath=//*[@id="cdSetorDestino"]/button/span[1]
${CpSetorDestinoC}    xpath=//*[@id="#filterLov"]
${CpSetorDestinoD}    xpath=//*[@id="btfilter"]
${CpSetorDestinoE}    xpath=//*[@id="btok"]

${BtSalvar}        

# Selecionar Documentos
${BtDocA}                xpath=//*[@id="btnPesquisar"]
${CpDocPeriIni}          xpath=//*[@id="inp:dtInicio"]
${CpDocPeriFin}          xpath=//*[@id="inp:dtFim"]
${BtPesq}




# # Verificar Msg
# ${BtSalvar}
# ${MgsVerif}       xpath=//p[@class='notifications-item-text']
