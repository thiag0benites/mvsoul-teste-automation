##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Nota Fiscal
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/C_NOTA_FISCAL_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Nota |${NotaFiscal}|
    Click Elemento por titulo    Procurar
    Preencher Campo    ${CampoNota}    ${NotaFiscal}
    Send Keys    F8
    Sleep    1

Validar Consulta Pelos Resultados |${Numero}| |${Cidade}| |${UsuarioEmitiu}|
    Validar Elemento Pelo Titulo    ${Numero}
    Validar Elemento Pelo Titulo    ${Cidade}
    Validar Elemento Pelo Titulo    ${UsuarioEmitiu}
