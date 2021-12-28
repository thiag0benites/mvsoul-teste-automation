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
# Selecionar Documentos
${BtDocA}         xpath=//*[@id="btnPesquisar"]
${CpDocPeriIni}    xpath=//*[@id="inp:dtInicio"]
${CpDocPeriFin}    xpath=//*[@id="inp:dtFim"]
${BtPesq}         xpath=//*[@id="btnPesquisa"]
# Importar
${BtImporA}       xpath=//*[@id="grdSelecaoDoc"]/div[4]/div[3]/div/div[1]/div[8]/div/button
# Importar com Metodo
${CpImportA}      xpath=//*[@id="inp:cdDocumentoProt"]
${CpImportB}      xpath=//*[@id="cdDocumentoProt"]/button/span[1]
${CpImportC}      xpath=//*[@id="#filterLov"]
${CpImportD}      xpath=//*[@id="btfilter"]
${CpImportE}      xpath=//*[@id="btok"]
# Importação para a Pagina Pai
${BtImporAB}      xpath=//*[@id="btnImportar"]
# Verificar Msg e Salvar
${BtSalvar}       xpath=//*[@id="tb-record-save"]/a/i
${MgsVerif}       xpath=//p[@class='notifications-item-text']
