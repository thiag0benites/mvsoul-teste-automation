##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource                            ../../2-pages/6-CONTROLADORIA/M_REP_MANUAL_PAGE.robot

*** Keywords ***

Inserir Data Competencia |${data}|

    Sleep    2
    ${dd}                          Get Substring        ${data}         0     2
    ${ddPrimeriaPosicao}           Get Substring        ${dd}           0     1

    IF    ${ddPrimeriaPosicao} == 0
    ${dd}                          Get Substring        ${data}         1     2
    END

    ${MES}                         Get Substring        ${data}         3     6
    ${aaaa}                        Get Substring        ${data}         7     12

    Click no Item                  ${CampoDataCompet} 
    Click no Item                  ${BotaoDataCompetencia}
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

Inserir Data Repasse |${data}|
    Sleep    2
    ${dd}                          Get Substring        ${data}         0     2
    ${ddPrimeriaPosicao}           Get Substring        ${dd}           0     1

    IF    ${ddPrimeriaPosicao} == 0
    ${dd}                          Get Substring        ${data}         1     2
    END

    ${MES}                         Get Substring        ${data}         3     6
    ${aaaa}                        Get Substring        ${data}         7     12
    
    Click no Item                  ${CampoDataRepasse} 
    Click no Item                  ${BtnCalendDataRepasse}
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

Usuario devera informar no campo <Codigo> o prestador que recebera o repasse |${Prestador}|
    Click no Item                                        ${CampoCodigo}
    Clicar no Campo e Preencher Informacao               ${BtnCampoCodigo}           ${CampoFiltro}       ${Prestador}
    Clicar Botao se estiver Visivel                      ${BtnFiltro}
    Click no Item                                        ${SelecionaFiltro}
    Clicar Botao se estiver Visivel                      ${BtnOk}


Clicar no botao [Buscar]
    Click no Item                                        ${BtnProcurar}
    
No campo <Competencia> inserir a competencia desejada e clicar no botao [Executar]
    Inserir Data Competencia |20/Mai/2019|
    Click no Item                                        ${BtnExecutarConsulta} 

Clicar no botao [Adicionar] para realizar lancamento manual    
    Click no Item                                        ${BtnAdicionar(+)}       

Usuario devera informar no campo <Grupo de Repasse> o grupo ao qual o prestador foi associado |${Grupo}|
    Click no Item                                        ${CampoGrupoRepasse}
    Clicar no Campo e Preencher Informacao               ${BtnGrupoRepasse}           ${CampoFiltro}      ${Grupo}
    Clicar Botao se estiver Visivel                      ${BtnFiltro}
    Click no Item                                        ${SelecionaFiltro}
    Clicar Botao se estiver Visivel                      ${BtnOk}

Usuario devera informar no campo <Setor> qual setor o prestador selecionado presta serviços |${Setor}|
    Click no Item                                        ${CampoSetor}
    Clicar no Campo e Preencher Informacao               ${BtnSetor}           ${CampoFiltro}      ${Setor}
    Clicar Botao se estiver Visivel                      ${BtnFiltro}
    Click no Item                                        ${SelecionaFiltro}
    Clicar Botao se estiver Visivel                      ${BtnOk}

Usuario devera informar no campo <Valor faturado> o valor referente aos procedimentos executados pelo prestador selecionado |${Valor}|
    Clicar no Campo e Preencher Informacao               ${CampoValorFaturado}        ${CampoEdit}        ${Valor}

Usuario devera informar no campo <Valor Repasse> o valor a ser repassado para o prestador |${Repasse}|
    Clicar no Campo e Preencher Informacao               ${CampoValorRepasse}         ${CampoEdit}        ${Repasse}

Usuario devera informar no campo <Descricao> a identificacao do repasse em referencia |${Descricao}|
    Preencher campo                                      ${CampoDescricao}            ${Descricao}

Usuario devera clicar no botao [Salvar] "Validar Msg|${VldMsg}|"
    Click no Item                                        ${BtnSalvar}
    Validar Informacao Item                              ${ValidMsg}                  ${VldMsg}
