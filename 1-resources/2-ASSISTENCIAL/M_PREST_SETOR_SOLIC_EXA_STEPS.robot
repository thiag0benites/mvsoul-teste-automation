##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Passo a passo do Manutenção de Guias (Std) 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../2-pages/2-ASSISTENCIAL/M_PREST_SETOR_SOLIC_EXA_PAGE.robot
### Metodos Genericos


*** Variable ***

*** Keywords ***
Preenche Informacoes "Atendimento|${Atend}|", "Data Pedido|${data}|"
    Preencher campo                                    ${CampoAtendimento}         ${Atend}
    Inserir Data Do Pedido |${data}|
    Press Keys                                         ${MedSolic}                 DELETE
    Press Keys                                         ${MedSolic}                 DELETE
    Press Keys                                         ${Setor}                    DELETE
    Press Keys                                         ${Setor}                    DELETE
    Click no Item                                      ${CampoSetorText}        
    Sleep    3
    Click no Item                                      ${BtnSetorPrest}
    Click no Item                                      ${BtnExterno}   

Acesso Lancamento Exame "Numero Conselho|${NroCons}|", "Nome Prestador|${NomePrest}|", "Conselho|${Conselho}|", "Especialidade|${Espec}|"
    Preencher campo                                    ${CampoNroConselho}            ${NroCons}
    Preencher campo                                    ${CampoNomePrest}              ${NomePrest}
    Clicar no Campo e Preencher Informacao             ${BtnConselho}                 ${CampoFiltrar}        ${Conselho}
    Click no Item                                      ${BtnFiltrar}
    Click no Item                                      ${BtnOkFiltrar}
    Clicar no Campo e Preencher Informacao             ${BtnEspecialidade}            ${CampoFiltrar}        ${Espec}
    Click no Item                                      ${BtnFiltrar}
    Click no Item                                      ${BtnOkFiltrar}
    Click no Item                                      ${BtnSelecionar}


Preenche Lancamento Exame por Prestador "Setor Solicitante|${SetSolic}|", "Exame|${Exame}|"
    Clicar no Campo e Preencher Informacao             ${BtnSetorSolic}               ${CampoFiltrar}        ${SetSolic}
    Click no Item                                      ${BtnFiltrar}
    Click no Item                                      ${BtnOkFiltrar}
    Click no Item                                      ${CampoExame}
    Clicar no Campo e Preencher Informacao             ${BtnExame}                    ${CampoFiltrar}        ${Exame}
    Click no Item                                      ${BtnFiltrar}
    Click no Item                                      ${BtnOkFiltrar}
    Click no Item                                      ${FinalizarLancamento}
    
Salvar Alteracoes e "Validar|${Valid}|"
    Click no Item                                      ${BtnSalvar}
    Validar Informacao Item                            ${MsgValid}                    ${Valid}


Inserir Data Do Pedido |${data}|
    ## DATA DO DIA
    Sleep    2
    ${dd}                        Get Substring    ${data}    0    2
    ${ddPrimeriaPosicao}         Get Substring    ${dd}      0    1
    IF    ${ddPrimeriaPosicao} == 0
        ${dd}                    Get Substring    ${data}    1    2
    END
    ${MES}                       Get Substring    ${data}    3    6
    ${aaaa}                      Get Substring    ${data}    7    12
    Click no Item                                 ${DtPedido}
    Click no Item                                 ${BtnDtPedido}
    # Click no Item    ${SetaDoCalendario}
    ${anoInicio}=                Get WebElement                                 xpath://select[@class='ui-datepicker-year']//option[contains(text(),'${aaaa}')]
    Should Be Equal                               ${anoInicio.text}             ${aaaa}
    Click Element                                 ${anoInicio}
    Sleep    5
    ${mesInicio}=                Get WebElement                                 xpath://select[@class='ui-datepicker-month']//option[contains(text(),'${MES}')]
    Should Be Equal                               ${mesInicio.text}             ${MES}
    Click Element                                 ${mesInicio}
    Sleep    5
    ${diaInicio}=                Get WebElement                                 xpath://a[contains(text(),'${dd}')]
    Should Be Equal                               ${diaInicio.text}             ${dd}
    Click Element                                 ${diaInicio}
    Sleep    5
