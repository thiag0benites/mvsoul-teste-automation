##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/1-ATENDIMENTO/ALT_PAC_PAGE.robot

*** Keywords ***

Campos Obrigatorios a serem preenchidos e Salvar |${Paciente}||${Motivo_Da_Alta}||${Tipo_De_Limpeza}||${Procedimento_Da_Alta}||${Procedimento_CIH}||${Observacao_Da_Alta}||${CID_Principal}||${Mensagem1}|
    Selecionar Item Na Lista                                ${BtnAtendimento}          ${Paciente}   ${Paciente}
    Clicar no botão Executar
    Selecionar Item Na Lista                                ${BtnMotivoDaAlta}         ${Motivo_Da_Alta}                                  ${Motivo_Da_Alta}
    Selecionar Item Na Lista                                ${BtnTipoDeLimpeza}        ${Tipo_De_Limpeza}                                 ${Tipo_De_Limpeza}
    Selecionar Item Na Lista                                ${BtnProcedimentoDaAlta}   ${Procedimento_Da_Alta}                            ${Procedimento_Da_Alta}
    Selecionar Item Na Lista                                ${BtnProcedimentoCIH}      ${Procedimento_CIH}                                ${Procedimento_CIH}
    Preencher campo                                         ${CampoObservacaoDaAlta}   ${Observacao_Da_Alta}
    Click no Item                                           ${BtnCIDAtendimento}
    Selecionar Item Na Lista                                ${BtnCIDPrincipal}         ${CID_Principal}                                   ${CID_Principal}
    Click no Item                                           ${BtnConfirmarAlta}
    Validar Informacao Item                                 ${Alerta}                  ${Mensagem1} 
    Clicar no botão Sim
    
Comprovante da Alta Hospitalar do Paciente |${Saida_Do_Relatorio}||${Mensagem2}|   
    Seleciona Item Combobox                                 ${BtnSaidaDoRelatorio}     ${Saida_Do_Relatorio}                            
    Click no Item                                           ${BtnImprimir}
    Send Keys                                               ctrl+tab
    Sleep                                                   5
    Click no Item                                           ${BtnSair}
    #Click no Item                                           ${BtnSair}
    Validar Informacao Item                                 ${Alerta}                  ${Mensagem2}
    Click no Item                                           ${BtnOK}
 