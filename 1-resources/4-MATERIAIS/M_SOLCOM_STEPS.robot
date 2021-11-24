##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela Calculo da Depreciação do Bem 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_SOLCOM_PAGE.robot

*** Variable ***
${CurrentDate}

*** Keywords ***

Preencher o campos dtMaxima[data atual], Setor|${setor}|, Nome do Solicitante|${nSolicitante}|, Motivo do Pedido|${motPedido}|, Comprador|${comprador}|, Estoque|${estoque}|, Produto|${produto}|
    Wait Until Element Is Visible    ${cpDtMaxima}    120
    Pegar data atual
    #Double Click Element       ${elemDtMaxima}
    #Execute JavaScript document.getElementById('inp:dtMaxima').Onclick ()
    Click Element       ${cpCalendario}
    Click Link      ${linkDate} 
    #Input Text        ${cpDtMaxima}       ${CurrentDate}
    #Press Keys    ${cpDtMaxima}    ENTER
    Sleep      3    
    Click Element       ${cpSetor}
    Preencher Campo        ${cpSetor}       ${setor}
    Click Element       ${cpNomeSolicitante}
    Preencher Campo        ${cpNomeSolicitante}       ${nSolicitante}
    Click Element       ${cpMotivo}
    Preencher Campo        ${cpMotivo}       ${motPedido}
    Click Element       ${cpComprador}
    Preencher Campo        ${cpComprador}       ${comprador}
    Click Element       ${cpEstoque}
    Preencher Campo        ${cpEstoque}       ${estoque}
    Click Element       ${cpProduto}
    Preencher Campo        ${inpProduto}       ${produto}
    Press Keys    ${inpProduto}    ENTER
         
      
Clicar no botao [${nomeBtn}]
    IF    '${nomeBtn}' == 'Sim'
        Wait Until Element Is Visible    ${btnSim}    60
        Click Button    ${btnSim}
        Sleep    3
        Click Button    ${btnSim2}
        Sleep       3
    ELSE IF    '${nomeBtn}' == 'Salvar'
        Wait Until Element Is Visible    ${btnSalvar}    30
        Sleep    1
        Click Element    ${btnSalvar}
        Sleep    6
    ELSE IF    '${nomeBtn}' == 'SimLimpar'
        Wait Until Element Is Visible    ${btnSim3}    30
        Sleep    1
        Click Element    ${btnSim3}
        Sleep    6
        Wait Until Element Is Not Visible       ${inpQtdSolicitada}     20
    END

Preencher o campo QtdSolicitada|${qtdSolicitada}|
    Click Element       ${cpQtdSolicitada}
    Preencher Campo        ${inpQtdSolicitada}       ${qtdSolicitada}
    Press Keys    ${inpQtdSolicitada}    ENTER


        