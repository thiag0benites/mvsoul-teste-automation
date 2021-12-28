##################################################################################################################################
# Autor: Marcos Costa
# Decrição: Validar Acesso à tela de Envio de Documentos através do botão <Novo Protocolo> na tela Central de Documentos.
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
# Setor
${CpSetorTraA}    xpath=//*[@id="cdSetor"]/button/span[1]
${CpSetorTraB}    xpath=//*[@id="#filterLov"]
${CpSetorTraC}    xpath=//*[@id="btfilter"]
${CpSetorTraD}    xpath=//*[@id="btok"]
# Atualizar
${BtAtualiza}     xpath=//*[@id="btnAtualizar"]
# Novo Protocolo
${BtNovoProto}    xpath=//*[@id="btnNovoProt"]
# Protocolo da Tela Envio de Documentos
${BtPesquisaA}    xpath=//*[@id="tb-search"]/a/i
${CpProtocoloP}    xpath=//*[@id="inp:cdProtocoloDoc"]
${BtPesquisaB}    xpath=//*[@id="tb-execute"]/a/i
# Sair da Tela de Envio
${BtExit}         xpath=//*[@id="tb-exit"]/a/i
