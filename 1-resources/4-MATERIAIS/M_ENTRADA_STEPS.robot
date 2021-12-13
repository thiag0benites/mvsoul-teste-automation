##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Passos da tela Entrada dos Produtos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_ENTRADA_PAGE.robot

*** Variable ***

*** Keywords ***
Informar "Tipo de Documento|${TipoDoc}|", "Estoque|${Estoque}|"    
    Clicar no Campo e Preencher Informacao            ${BtnTipoDoc}            ${CampoFiltrar}            ${TipoDoc}
    Click no Item                                     ${BtnFiltrar}
    Click no Item                                     ${BtnOkFiltrar}
    Preencher campo                                   ${CampoEstoque}          ${Estoque}
    Click no Item                                     ${BtnFiltrar}
    Click no Item                                     ${BtnOkFiltrar}
    Click no Item                                     ${SelectEstoque}
    Send Keys    tab

Preencher Campos: "Numero Documento|${NrDoc}|", "Serie|${Serie}|", "Fornecedor|${Fornec}|", Data Emissao|${data}|, "CFOP|${CFOP}|", "Valor Total Nota|${VlTtlNota}|"
    Preencher campo                                   ${CampoNroDoc}           ${NrDoc}
    Preencher campo                                   ${CampoSerie}            ${Serie}
    Clicar no Campo e Preencher Informacao            ${BtnFornecedor}         ${CampoFiltrar}            ${Fornec}
    Click no Item                                     ${BtnFiltrar}
    Click no Item                                     ${BtnOkFiltrar}
    Inserir Data Emissao|${data}|
    Clicar no Campo e Preencher Informacao            ${BtnCFOP}               ${CampoFiltrar}            ${CFOP}
    Click no Item                                     ${BtnFiltrar}
    Click no Item                                     ${BtnOkFiltrar}
    Preencher campo                                   ${CampoVlTotalNota}      ${VlTtlNota}
    Click no Item                                     ${BtnProdutos}  
         

Informar Campos "Produto|${Produto}|", "Quantidade Entrada|${QtdEntrada}|", "Valor Unitario|${VlUnitario}|"
    Clicar no Campo e Preencher Informacao            ${BtnCodProduto}          ${CampoFiltrar}            ${Produto}  #CANETA BISTURI
    Click no Item                                     ${BtnFiltrar}
    Click no Item                                     ${BtnOkFiltrar}
    Preencher campo                                   ${CampoQtdEntrada}        ${QtdEntrada}  #1
    Preencher campo                                   ${CampoVlUnitario}        ${VlUnitario}  #5
    Validar Pop-Pup de Alerta e Clicar                ${MsgAlerta}              ${BtnSimAlerta}
    Click no Item                                     ${BtnSair}



Inserir Data Emissao|${data}|
    Sleep    2
    ${dd}                          Get Substring        ${data}         0     2
    ${ddPrimeriaPosicao}           Get Substring        ${dd}           0     1

    IF    ${ddPrimeriaPosicao} == 0
    ${dd}                          Get Substring        ${data}         1     2
    END

    ${MES}                         Get Substring        ${data}         3     6
    ${aaaa}                        Get Substring        ${data}         7     12
    
    Click no Item                  ${CampoDtEmissao} 
    Click no Item                  ${BtnDataEmissao}
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


