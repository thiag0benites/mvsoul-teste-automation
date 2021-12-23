##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Passos da tela Gerenciamentos de Exames
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_LAUDO_CULTURA_PAGE.robot

*** Variable ***

*** Keywords *** 
Selecione o exame |${Exame1}| 
     Click no Item                    ${Exame}        
     Click no Item                    ${BtnExame} 
     Preencher Campo                  ${FiltroExame}                ${Exame1}
     Click no Item                    ${BtnFiltro}
     Click no Item                    ${BtnOk}   
     Click Elemento por titulo        Executar Consulta
     Click no Item                    ${BtnResultado}

Preencha o laudo cultura |${Tipo}| |${Campo}|
     Click no Item                    ${BtnRes2}
     Preencher Campo                  ${FiltroExame}                ${Tipo}
     Click no Item                    ${BtnOk} 
     Click no Item                    ${Linha1}
     Seleciona Item Combobox          ${Campo1}                     ${Campo}
     Click no Item                    ${Linha2}   
     Seleciona Item Combobox          ${Campo1}                     ${Campo}
     Click no Item                    ${Linha3}  
     Seleciona Item Combobox          ${Campo1}                     ${Campo}

Acione gravar laudo |${MsgVereficada}|
     Click no Item                    ${BtnGravar}
     Validar Informacao Item          ${MsgLida}                    ${MsgVereficada}