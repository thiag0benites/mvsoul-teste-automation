##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Passos da tela de  Produtos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_KIT_MGES_PAGE.robot

*** Variable ***

*** Keywords ***
Informar os dados nos campos
    Click no Item                    ${BtnProduto}   
    Click no Item                    ${BtnFiltro}  
    Click no Item                    ${LinhaProduto}  
    Click no Item                    ${BtnOk}
    Click no Item                    ${BtnOk2}
    Seleciona Item Combobox          ${BtnSimilar}                    Sim
    Sleep                                2
    Seleciona Item Combobox          ${BtnProduzir}                   F�rmula
    Sleep                                2
    Seleciona Item Combobox          ${ComboboxAtivo}                 Sim
    Sleep                                2
    Click no Item                    ${BtnCirurgia} 
    Click no Item                    ${LinhaCirurgia}  
    Click no Item                    ${BtnOk}
    Click no Item                    ${BtnPrestador}   
    Click no Item                    ${LinhaPrestador}   
    Click no Item                    ${BtnOk}
    Click no Item                    ${BtnKit}
    Click no Item                    ${LinhaKit} 
    Click no Item                    ${BtnOk}
    Sleep                                2

Informar os campos Material Medicam
    Click no Item                    ${BtnMaterial}  
    Click no Item                    ${LinhaProdutos}
    Click no Item                    ${BtnOk}
    Click no Item                    ${QtdMat}
    Preencher campo                  ${QtdMat2}                          2
    Sleep                                2
    Click no Item                    ${BtnUnidMat2}  
    Click no Item                    ${BtnUnidMat}
    Click no Item                    ${LinhaUnidMat}
    Click no Item                    ${BtnOk}
    Sleep                                2

Informar os campos Material Medicamento
    Click no Item                    ${LinhaProdConsig} 
    Click no Item                    ${BtnProdConsig}    
    Click no Item                    ${LinhaProdConsig2}     
    Click no Item                    ${BtnOk} 



