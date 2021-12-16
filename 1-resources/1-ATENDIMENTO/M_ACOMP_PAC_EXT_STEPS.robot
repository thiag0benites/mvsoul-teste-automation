##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Passos da tela de Geração e Liberação de Agenda
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_ACOMP_PAC_EXT_PAGE.robot

*** Variable ***

*** Keywords ***
Acesso Ao Prontuario "Nome|${Nome}|"
    Click no Item                             ${BtnPaciente}
    Clicar no Campo e Preencher Informacao    ${CampoNome}            ${CampoNome}            ${Nome}
    Click no Item                             ${BtnPesquisar} 
    Click no Item                             ${BtnConfirmar}  

Acesso Detalhamento Do Contato "Resp Contato|${RespCont}|", "Informante|${Informante}|", "Campo Inf Pertinente|${InfPert}|"
    Preencher campo                           ${CampoRespContato}       ${RespCont}
    Preencher campo                           ${CampoInformante}        ${Informante}
    Preencher campo                           ${CampoInfPertinente}     ${InfPert}


Registro de Obito De Pac Externos "Data Obito|${data}|", "Hora Obito|${HrObito}|", "Declaracao Obito|${DeclObito}|", "Local|${Local}|", "Validador|${Valid}|"
    Inserir Data Do Obito |${data}|    ### dd/Mmm/aaaa ###
    Preencher campo                           ${CampoHoraObito}         ${HrObito}
    Preencher campo                           ${CampoDeclObito}         ${DeclObito}
    Clicar no Campo e Preencher Informacao    ${CampoLocal}             ${CampoLocal}            ${Local}
    Send Keys    tab    
    Click no Item                             ${BtnCID}
    Click no Item                             ${BtnOk}
    Click no Item                             ${BtnSalvar}
    Validar Informacao Item                   ${ValidObito}             ${Valid}



Inserir Data Do Obito |${data}|   ## DATA DO DIA

    Sleep    2
    ${dd}                          Get Substring        ${data}         0     2
    ${ddPrimeriaPosicao}           Get Substring        ${dd}           0     1

    IF    ${ddPrimeriaPosicao} == 0
    ${dd}                          Get Substring        ${data}         1     2
    END

    ${MES}                         Get Substring        ${data}         3     6
    ${aaaa}                        Get Substring        ${data}         7     12

    Click no Item                  ${CampoDataObito} 
    Click no Item                  ${BtnDataObito}
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