##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/6-CONTROLADORIA/M_PREST_CONTAS_PAGE.robot

*** Keywords ***
Informar o codigo|${Codigo}| do adiantamento que estara sendo prestado contas
    Preencher campo                           ${CampoCodigo}        ${Codigo}
    Click no Item                             ${BtnExecConsulta}
    Click no Item                             ${BtnDadosDespesa}

Informar ou selecionar no campo <setor> |${Setor}| 
    Clicar no Campo e Preencher Informacao    ${BtnSetor}           ${CampoFiltro}        ${Setor}
    Click no Item                             ${BtnFiltrar} 
    Click no Item                             ${BtnOkFiltro}

Preencher Campo "Valor Prestacao|${VlPrestacao}|", "Conta Contabil|${ContaContabil}|", "Historico Padrao|${HistPadrao}|"
    Preencher campo                           ${CampoVlPrestacao}    ${VlPrestacao} 
    Clicar no Campo e Preencher Informacao    ${BtnContaContabil}    ${CampoFiltro}        ${ContaContabil} 
    Click no Item                             ${BtnFiltrar} 
    Click no Item                             ${BtnOkFiltro}
    Clicar no Campo e Preencher Informacao    ${BtnHistPadrao}       ${CampoFiltro}        ${HistPadrao} 
    Click no Item                             ${BtnFiltrar} 
    Click no Item                             ${BtnOkFiltro}

Preenche informacoes Para recebimento de Dinheiro "Tipo Documento|${TipoDoc}|", "Numero Documento|${NroDoc}|", "Conta Custo|${ContaCusto}|", "Caixa|${Caixa}|"
    Clicar no Campo e Preencher Informacao    ${BtnTipoDocumento}    ${CampoFiltro}        ${TipoDoc}
    Click no Item                             ${BtnFiltrar} 
    Click no Item                             ${BtnOkFiltro}
    Preencher campo                           ${CampoNroDoc}         ${NroDoc}
    Clicar no Campo e Preencher Informacao    ${BtnContaCusto}       ${CampoFiltro}        ${ContaCusto}
    Click no Item                             ${BtnFiltrar} 
    Click no Item                             ${BtnOkFiltro}
    Clicar no Campo e Preencher Informacao    ${BtnCaixa}            ${CampoFiltro}        %${Caixa}
    Click no Item                             ${BtnFiltrar} 
    Click no Item                             ${BtnOkFiltro}
    Click no Item                             ${BtnConfirmar}
    Validar Item                              ${ValidMsg}           


Pesquisar Atendimento
    Click no Item                             ${BtnPesquisar}     
    Click no Item                             ${BtnExecConsulta}
    Click no Item                             ${BtnSeguinte}
    Click no Item                             ${BtnSeguinte}
    Click no Item                             ${BtnNotasFornec}
    Click no Item                             ${BtnSelecNotas}
    Click no Item                             ${ChcBoxInativo}

Seleciona CheckBox de Notas e Confirma
    Click no Item                             ${ChcBoxNotas1}
    Click no Item                             ${ChcBoxNotas2}
    Click no Item                             ${ChcBoxNotas3}
    Click no Item                             ${BtnConfirmar}
    Validar Pop-Pup de Alerta e Clicar        ${ValidPrestConta}                 ${BtnOkAlerta}
    Validar Pop-Pup de Alerta e Clicar        ${ValidAlertaImpressao}            ${BtnConfImpressao}

Efetuar Prestacao
    Click no Item                             ${BtnEfetuarPrest}

Validar Despesa
    Validar Item                              ${ValidBtInativo}
Validar Recebimento Dinheiro 
    Validar Informacao Item                   ${ValidMsg}       ${MsgValid}

Inserir Data Prestacao |${data}|
    Sleep    2
    ${dd}                          Get Substring        ${data}         0     2
    ${ddPrimeriaPosicao}           Get Substring        ${dd}           0     1

    IF    ${ddPrimeriaPosicao} == 0
    ${dd}                          Get Substring        ${data}         1     2
    END

    ${MES}                         Get Substring        ${data}         3     6
    ${aaaa}                        Get Substring        ${data}         7     12
    
    Click no Item                  ${CampoDtPrestacao} 
    Click no Item                  ${BtnDtPrestacao}
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