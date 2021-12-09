##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/M_PGTO_REP_GERAL_PAGE.robot

*** Keywords ***
Usuario devera selecionar o check box [Todos] referente aos prestador a serem feitos os pagamentos em seguida clicar no botao [Confirmar]
    Validar Pop-Pup de Alerta e Clicar                        ${MsgUsuarioAlerta}            ${BtnAlertaSimParaTodos}
    Click no Item                                             ${CkBoxTodos}
    Click no Item                                             ${BtnConfirmar}
    Validar Pop-Pup de Alerta e Clicar                        ${MsgErroAlerta}               ${BtnOkAlerta}

Inserir Data Competencia |${dd}/${MES}/${aaaa}|
# Inserir Data de Inicio |${data}|

    # Sleep    2
    # ${dd}                          Get Substring        ${data}         0     2
    # ${ddPrimeriaPosicao}           Get Substring        ${dd}           0     1

    # IF    ${ddPrimeriaPosicao} == 0
    # ${dd}                          Get Substring        ${data}         1     2
    # END

    # ${MES}                         Get Substring        ${data}         3     6
    # ${aaaa}                        Get Substring        ${data}         7     12

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