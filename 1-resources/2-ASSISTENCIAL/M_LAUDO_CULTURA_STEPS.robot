##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Passos da tela Gerenciamentos de Exames
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_LAUDO_CULTURA_PAGE.robot

*** Variable ***

*** Keywords *** 
Selecione o exame |${Exame1}| |${NumeroPedido}|
     Preencher Campo                  ${CampoPedido}                ${NumeroPedido}
     Click Elemento por titulo        Executar Consulta
     Click no Item                    ${Exame}        
     Click no Item                    ${BtnExame} 
     Preencher Campo                  ${FiltroExame}                ${Exame1}
     Click no Item                    ${BtnFiltro}
     Click no Item                    ${BtnOk}   
     #Click Elemento por titulo        Executar Consulta
     #Clicar Item e Selecionar da Lista    $CampoClick    $BotaoLov    $Item    $ItemLista
     Click no Item                    ${LinhaPaciente} 
     Click no Item                    ${BtnResultado}

# Preencha o laudo cultura |${Tipo}| |${Obs}|
#      Click no Item                    ${Notificacao} 
#      Click no Item                    ${Botao2} 
#      Preencher Campo                  ${FiltroExame}                ${Tipo}
#      Click no Item                    ${BtnOk} 
#      Click no Item                    ${LinhaCodigo}  
#      Click no Item                    ${BtnCodigo} 
#      Click no Item                    ${BtnOk}

#      Click no Item                    ${BtnCodigo} 
#      Click no Item                    ${BtnOk} 
#      Preencher Campo                  ${AreaObs}                    ${Obs}
#      Click no Item                    ${BtnCodigo} 
#      Click no Item                    ${BtnOk} 

# Preencha os detalhes da medicacao |${Campo}|
#     Wait Until Element Is Visible    ${Linha1}
#     Click no Item                    ${Linha1}
#     Seleciona Item Combobox          ${Campo1}                     ${Campo}
#     Click no Item                    ${Linha2} 
#     Click no Item                    ${Linha2}  
#     Seleciona Item Combobox          ${Campo1}                     ${Campo}
#     Click no Item                    ${Linha3}  
#     Seleciona Item Combobox          ${Campo1}                     ${Campo}

Acione gravar laudo |${MsgVereficada}|
    Click no Item                    ${BtnGravar}
    Validar Informacao Item          ${MsgLida}                    ${MsgVereficada}

Captura da mensagem |${suite}|${id}|
    Sleep    1
    Should Not Be Empty   ${MsgLida}
    ${protocolo}    Get Text    ${MsgLida}   
    Altera massa de dados da "${suite}", linha "${id}", coluna "MsgValidada", valor "${protocolo}"
    Sleep    3