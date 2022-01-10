##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/M_PGTO_REP_GERAL_PAGE.robot

*** Keywords ***
Preenche Periodo Pagto e Consulta "Competencia|${data}|"
    Inserir Data de Inicio |${data}|
    Validar Pop-Pup de Alerta e Clicar                        ${MsgUsuarioAlerta}             ${BtnAlertaSimParaTodos}
    Click no Item                                             ${CkBoxTodos}
    Click no Item                                             ${BtnConfirmar}
    
Preencher Pagto Atual "Msg Imprimir|${MsgImprimir}|"
    Click no Item                                             ${BtnPagarAtual}
    Validar Pop-Pup de Alerta e Clicar                        ${MsgUsuarioAlerta}            ${BtnOkAlerta}
    Click no Item                                             ${ChBoxBaixa}
    Click no Item                                             ${BtnSalvar}
    Validar Item                                              ${MsgUsuarioAlerta}
    Sleep    3
    # Click no Item                                             ${ChBoxBaixa2}
    Send Keys    ENTER
    Click no Item                                             ${BtnImpir}
    Validar Informacao Item                                   ${MsgGravSucesso}            ${MsgImprimir} 
    Click no Item                                             ${BtnSimAlertaImp}
    Click no Item                                             ${BtnImprimirLogPagto}
    Capture Page Screenshot  


Inserir Data de Inicio |${data}|

    Sleep    2
    ${dd}                          Get Substring        ${data}         0     2
    ${ddPrimeriaPosicao}           Get Substring        ${dd}           0     1

    IF    ${ddPrimeriaPosicao} == 0
    ${dd}                          Get Substring        ${data}         1     2
    END

    ${MES}                         Get Substring        ${data}         3     6
    ${aaaa}                        Get Substring        ${data}         7     12

    Click no Item                  ${CampoCompetencia} 
    Click no Item                  ${BtnCalendCompetencia}
    # Click no Item                  ${SetaDoCalendario}

    ${anoInicio}=                  Get WebElement                       xpath://select[@class='ui-datepicker-year']//option[contains(text(),'${aaaa}')]
    Should Be Equal                ${anoInicio.text}                    ${aaaa}
    Click Element                  ${anoInicio}
    Sleep                                               5
    ${mesInicio}=                  Get WebElement                       xpath://select[@class='ui-datepicker-month']//option[contains(text(),'${MES}')]
    Should Be Equal                ${mesInicio.text}                    ${MES}
    Click Element                  ${mesInicio}
    Sleep                                               5
    ${diaInicio}=                  Get WebElement                       xpath://a[contains(text(),'${dd}')]
    Should Be Equal                ${diaInicio.text}                    ${dd}
    Click Element                  ${diaInicio}
    Sleep                                               5
    Click no Item                  ${BtnConsultar}