##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela O_IMP_MGES_FNFI
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA/O_IMP_MGES_FNFI_PAGE.robot

*** Variable ***

*** Keywords ***
Acessar |${tela}|${printscreen} ${las}
    Unselect Frame
    Click Element    ${HomeXpathBtnPesquisa}
    Preencher campo  ${HomeXpathBtnPesquisaInput}       ${tela}
    Sleep    1
    Click Element    ${ScreenImportEstoque} 

    #### LAS Send Keys #####
    IF    "${las}" == "@las"
        # Sleep    1
        Seleciona frame    ${IdIframe}    180
        Wait Until Element Is Visible    ${classLasDisplay}    180
        Unselect Frame
        # Sleep    1
        Send Keys    tab
        Send Keys    enter
    END
    #### End LAS Send Keys #####
    Seleciona frame    ${IdIframe}    180
    Sleep    3
    Run Keyword If    '${printscreen}' == '@print'    Capture Page Screenshot
    Sleep    60


Preencher os campos Empresa|${empresa}|, Fornecedor|${fornecedor}|
    Wait Until Element Is Visible    ${cpEmpresa}    120
    Preencher Campo        ${cpEmpresa}       ${empresa} 
    Sleep      6
    Click Element       ${elemFornecedor}
    Preencher Campo        ${cpFornecedor}       ${fornecedor} 
    Sleep      4
    
Clicar no botao [${nomeBtn}]
    IF    '${nomeBtn}' == 'Pesquisar'
        Wait Until Element Is Visible    ${btnLupa}    180
        Sleep    10
        Double Click Element    ${btnLupa}
    ELSE IF     '${nomeBtn}' == 'Executar'
        Wait Until Element Is Visible   ${btnPesquisar}     30
        Sleep       1
        Click Element       ${btnPesquisar}
        Sleep       6 
    ELSE IF     '${nomeBtn}' == 'Importar dados'
        Wait Until Element Is Visible   ${btnImportarDados}     30
        Sleep       5
        Click Element       ${btnImportarDados}
        Sleep       6   
    ELSE IF     '${nomeBtn}' == 'Sim'
        Wait Until Element Is Visible   ${btnSim}     30
        Sleep       1
        Click Element       ${btnSim}
        Sleep       6  
    ELSE IF     '${nomeBtn}' == 'Sim2'
        Wait Until Element Is Visible   ${btnSim2}     30
        Sleep       1
        Click Element       ${btnSim2}
        Sleep       6   
     ELSE IF     '${nomeBtn}' == 'Imprimir'
        Wait Until Element Is Visible   ${btnImprimir}     30
        Sleep       1
        Click Element       ${btnImprimir}
        Sleep       6   
    END

Selecionar CheckBox que deseja importar
    Wait Until Element Is Visible   ${checkBoxImport}     30
    Sleep       1
    Click Element       ${checkBoxImport}

Valida aba do browser
    Switch Window  
    Sleep       8
