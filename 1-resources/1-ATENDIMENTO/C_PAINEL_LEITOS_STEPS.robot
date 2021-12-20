##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Passos da tela de Painel da Internação
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/C_PAINEL_LEITOS_PAGE.robot

*** Variable ***

*** Keywords ***
Validar Dados Aba Situacao |${UnidadeInternacao}| |${Leito}| |${Leito2}| |${Leito3}| |${Leito4}|
    Validar Elemento Pelo Titulo                    ${UnidadeInternacao}
    Validar Elemento Pelo Titulo                    ${Leito}
    Validar Elemento Pelo Titulo                    ${Leito2}
    Validar Elemento Pelo Titulo                    ${Leito3}
    Validar Elemento Pelo Titulo                    ${Leito4}

Click Aba Previsao |${DataPrevInternacao}| 
    Click no Item                                   ${BtnPrev}
    Preencher campo                                 ${BtnInsereDataIntern}                      ${DataPrevInternacao}
    Click Button                                    ${BtnPesquisarPrevAlta}
    
Validar Dados Aba Previsao |${NReserva}| |${Conve}| |${AvCir}|
    Validar Elemento Pelo Titulo                    ${NReserva}
    Validar Elemento Pelo Titulo                    ${Conve}
    Validar Elemento Pelo Titulo                    ${AvCir}

Click Aba Internados|${DataPrevAlta}|
    Click no Item                                   ${BtnInternados}
    Preencher campo                                 ${BtnDataIntern}                           ${DataPrevAlta}
    #Send Keys                                       tab
    Click Button                                    ${BtnPesquisarInternados}

Validar Dados Aba Internados |${Atend}| |${Pac}| |${LeitoInterno}|
    Validar Elemento Pelo Titulo                    ${Atend}
    Validar Elemento Pelo Titulo                    ${Pac}
    Validar Elemento Pelo Titulo                    ${LeitoInterno}
Click Aba Cancelados
    Click no Item                                  ${BtnCancelados}
Validar Dados Aba Cancelados |${ReservaCance}| |${PacCance}| |${MotCance}| 
    Validar Elemento Pelo Titulo                    ${ReservaCance}
    Validar Elemento Pelo Titulo                    ${PacCance}
    Validar Elemento Pelo Titulo                    ${MotCance}
