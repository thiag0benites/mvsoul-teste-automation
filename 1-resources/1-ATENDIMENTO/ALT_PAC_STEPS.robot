##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/1-ATENDIMENTO/ALT_PAC_PAGE.robot

*** Keywords ***

Campos Obrigatorios a serem preenchidos e Salvar |${Atendimento}||${MotivoDaAlta}||${TipoDeLimpeza}||${ObservacaoDaAlta}||${CIDPrincipal}||${Mensagem1}|
    Wait Until Element Is Visible                           ${BtnConfirmarAlta}        180
    Preencher campo                                         ${CampoAtendimento}        ${Atendimento}             #478375
    Click Elemento por titulo                               Executar Consulta
    Preencher campo                                         ${CampoMotivaDaAlta}        ${MotivoDaAlta}
    Send Keys                                               enter
     Preencher campo                                         ${CampoTipoDeLimpeza}      ${TipoDeLimpeza}
    Send Keys                                               enter
    Click no Item                                           ${BtnObervacao}
    Preencher campo                                         ${CampoObservacaoDaAlta}   ${ObservacaoDaAlta}
    Click no Item                                           ${BtnCID}
    Selecionar Item Na Lista                                ${BtnCIDPrincipal}         ${CIDPrincipal}                 ${CIDPrincipal}
    Click no Item                                           ${BtnConfirmarAlta}    
    Validar Informacao Item                                 ${Alerta}                  ${Mensagem1} 
    Click no Item                                           ${BtnSim}
    
Comprovante da Alta Hospitalar do Paciente|${Mensagem2}||${Mensagem3}|   
    #Seleciona Item Combobox                                 ${BtnSaidaDoRelatorio}     ${SaidaDoRelatorio}                            
    Click no Item                                           ${BtnSair}
    Validar Informacao Item                                 ${Alerta}                   ${Mensagem3}
    Validar Informacao Item                                 ${Alerta2}                  ${Mensagem2}
    Click no Item                                           ${BtnOK}
 