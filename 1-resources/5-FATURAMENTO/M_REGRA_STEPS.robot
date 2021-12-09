##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: Cobranças e tabelas
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/5-FATURAMENTO/M_REGRA_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher os campos Descricao|${descricao}|, Cir Mesma Via|${cirMesmaVia}|, Cir Via Diferente|${cirViaDiferente}|, Limite OPME aviso|${limiteOPME}|
    Wait Until Element Is Visible       ${cpDescricao}        180
    Preencher Campo        ${cpDescricao}       ${descricao} 
    Sleep      3
    Click Element       ${elemCirMesmaVia}
    Sleep       1
    Preencher Campo     ${cpCirMesmaVia}          ${cirMesmaVia}
    Sleep       3
    Click Element       ${elemCirViaDiferente}
    Sleep       1
    Preencher Campo     ${cpCirViaDiferente}          ${cirViaDiferente}
    Sleep       3
    Click Element       ${elemLimiteOPME}
    Sleep       1
    Preencher Campo     ${cpLimiteOPME}          ${limiteOPME}
    Sleep       3


Selecionar o checkBox [I]
    Click Element       ${checkBoxI}
    Sleep      3

Clicar no botao [Salvar]
    Click Element       ${btnSalvar}
    Sleep       3

Captura codigo |${suite}|${id}|
    Sleep    1
    Should Not Be Empty   ${elemcodigo}
    ${codigo}    Get Element Attribute    ${elemcodigo}    title
    Altera massa de dados da "${suite}", linha "${id}", coluna "codigoCapturado", valor "${codigo}"
    Sleep    3