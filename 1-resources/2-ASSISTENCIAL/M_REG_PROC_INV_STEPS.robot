##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Passo a passo do Manutenção de Guias (Std) 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../2-pages/2-ASSISTENCIAL/M_REG_PROC_INV_PAGE.robot
### Metodos Genericos


*** Variable ***

*** Keywords ***
Preencher Informacoes "Cod Atendimento|${CodAtend}|", "Codigo Procedimento|${CodProc}|", "Data Inicial|${data}|", "Hora Inicial|${HrInicial}|", "Data Final|${DtFinal}|", "Hora Final|${HrFinal}|"
    Clicar no Campo e Preencher Informacao                ${BtnCodAtendimento}        ${CampoFiltrar}         ${CodAtend}
    Click no Item                                         ${BtnFiltrar}
    Click no Item                                         ${BtnOkFiltrar}
    Validar Pop-Pup de Alerta e Clicar                    ${ValidMsg}                 ${BtnOkAlerta}
    Clicar no Campo e Preencher Informacao                ${BtnCodProcInv}            ${CampoFiltrar}         ${CodProc}
    Click no Item                                         ${BtnFiltrar}
    Click no Item                                         ${BtnOkFiltrar}
    Inserir Data Inicial |${data}|
    Preencher campo                                       ${CampoHoraInicial}         ${HrInicial}
    Inserir Data Final |${DtFinal}|
    Preencher campo                                       ${CampoHrFinal}           ${HrFinal}

Preencher Campos "Usuario Aplicacao|${UsuAplic}|", "Usuario Retirada|${UsuRet}|", "Justificativa|${Justif}|", "Registro Infeccao|${RegInfec}|", "Validar Registro|${MsgValid}|"
    Clicar no Campo e Preencher Informacao                ${BtnUsuAplicacao}          ${CampoFiltrar}          ${UsuAplic}
    Click no Item                                         ${BtnFiltrar}
    Click no Item                                         ${BtnOkFiltrar}
    Clicar no Campo e Preencher Informacao                ${BtnUsuAplicacao}          ${CampoFiltrar}          ${UsuRet}
    Click no Item                                         ${BtnFiltrar}
    Click no Item                                         ${BtnOkFiltrar}
    Preencher campo                                       ${CampoJustificativa}       ${Justif}
    Clicar no Campo e Preencher Informacao                ${BtnRegInfeccao}           ${CampoFiltrar}          ${RegInfec}
    Click no Item                                         ${BtnFiltrar}
    Click no Item                                         ${BtnOkFiltrar}
    Click no Item                                         ${BtnSalvar}
    Validar Informacao Item                               ${ValidMsg}                    ${MsgValid}

Acesso Atendimento
    Click no Item                                         ${ClínicaAssistencial}
    Click no Item                                         ${ControleInfHosp} 
    Click no Item                                         ${Atendimento}
    Sleep    5
Inserir Data Inicial |${data}|
    Sleep    2
    ${dd}                          Get Substring        ${data}         0     2
    ${ddPrimeriaPosicao}           Get Substring        ${dd}           0     1

    IF    ${ddPrimeriaPosicao} == 0
    ${dd}                          Get Substring        ${data}         1     2
    END

    ${MES}                         Get Substring        ${data}         3     6
    ${aaaa}                        Get Substring        ${data}         7     12
    
    Click no Item                  ${CampoDataInicial}
    Click no Item                  ${BtnDataInicial}
    # Click no Item                  ${SetaDoCalendario}

    ${anoInicio}=                  Get WebElement                       xpath://select[@class='ui-datepicker-year']//option[contains(text(),'${aaaa}')]
    Should Be Equal                ${anoInicio.text}                    ${aaaa}
    Click no Item                  ${anoInicio}
    Sleep                                               1
    ${mesInicio}=                  Get WebElement                       xpath://select[@class='ui-datepicker-month']//option[contains(text(),'${MES}')]
    Should Be Equal                ${mesInicio.text}                    ${MES}
    Click no Item                  ${mesInicio}
    Sleep                                               1
    ${diaInicio}=                  Get WebElement                       xpath://a[contains(text(),'${dd}')]
    Should Be Equal                ${diaInicio.text}                    ${dd}
    Click no Item                  ${diaInicio}
    Sleep                                               1

Inserir Data Final |${DtFinal}|
    Sleep    2
    ${dd}                          Get Substring        ${DtFinal}         0     2
    ${ddPrimeriaPosicao}           Get Substring        ${dd}              0     1

    IF    ${ddPrimeriaPosicao} == 0
    ${dd}                          Get Substring        ${DtFinal}         1     2
    END

    ${MES}                         Get Substring        ${DtFinal}         3     6
    ${aaaa}                        Get Substring        ${DtFinal}         7     12
    
    Click no Item                  ${CampoDataFinal}
    Click no Item                  ${BtnDataFinal}
    # Click no Item                  ${SetaDoCalendario}

    ${anoInicio}=                  Get WebElement                       xpath://select[@class='ui-datepicker-year']//option[contains(text(),'${aaaa}')]
    Should Be Equal                ${anoInicio.text}                    ${aaaa}
    Click no Item                  ${anoInicio}
    Sleep                                               1
    ${mesInicio}=                  Get WebElement                       xpath://select[@class='ui-datepicker-month']//option[contains(text(),'${MES}')]
    Should Be Equal                ${mesInicio.text}                    ${MES}
    Click no Item                  ${mesInicio}
    Sleep                                               1
    ${diaInicio}=                  Get WebElement                       xpath://a[contains(text(),'${dd}')]
    Should Be Equal                ${diaInicio.text}                    ${dd}
    Click no Item                  ${diaInicio}
    Sleep                                               1