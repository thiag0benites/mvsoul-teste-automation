##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Passos da tela de  Produtos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_KIT_MGES_PAGE.robot

*** Variable ***

*** Keywords ***
Informar os dados nos campos |${ItemSimilar}| |${TipoProducao}| |${CampoAtivo}|
    Click no Item                    ${BtnProduto}   
    Click no Item                    ${BtnFiltro}  
    Click no Item                    ${LinhaProduto}  
    Click no Item                    ${BtnOk}
    Click no Item                    ${BtnOk2}
    Seleciona Item Combobox          ${BtnSimilar}                    ${ItemSimilar}
    Sleep                                2
    Seleciona Item Combobox          ${BtnProduzir}                   ${TipoProducao}
    Sleep                                2
    Seleciona Item Combobox          ${ComboboxAtivo}                 ${CampoAtivo}
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

Informar os campos <Material Medicam> |${MaterialMedicam}|, <Material Medicamento> |${MaterialMedicamento}|, <Equipamentos> |${Equipamentos}|, <Sangue derivados> |${SangueDerivados}|, <Procedimentos> |${Procedimentos}|, <Observacao> |${MsgObs}|, <Caixa Cirurgica> |${CaixaCirurgica}|, <Rouparia> |${MsgRouparia}|, <Exame Laboratorial> |${ExameLaboratorial}|, <Exame de Imagem> |${ExameImagem}|

    Click no Item                    ${BtnMaterial}  
    Click no Item                    ${LinhaProdutos}
    Click no Item                    ${BtnOk}
    Click no Item                    ${QtdMat}
    Preencher campo                  ${QtdMat3}                        ${MaterialMedicam}
    Sleep                                2
    Click no Item                    ${BtnUnidMat2}  
    Click no Item                    ${BtnPadrao} 
    Click no Item                    ${LinhaUnidMat}
    Click no Item                    ${BtnOk}
    Sleep                                2

    Click no Item                    ${LinhaProdConsig} 
    Click no Item                    ${BtnPadrao}     
    Click no Item                    ${LinhaProdConsig2}     
    Click no Item                    ${BtnOk} 
    Sleep                                2
    Press Keys                       ${LinhaProdConsig3}                ENTER
    Preencher campo                  ${QtdMat3}                          ${MaterialMedicamento}
    Sleep                                2
    Click no Item                    ${LinhaUnidProdutoConsig}
    Click no Item                    ${BtnPadrao} 
    Click no Item                    ${BtnOk} 
    


    Click no Item                    ${MenuEquipamento} 
    Click no Item                    ${LinhaEquipamento}   
    Click no Item                    ${BtnPadrao}    
    Click no Item                    ${LinhaFiltroEquipamento}
    Click no Item                    ${BtnOk} 
    Click no Item                    ${LinhaQtdEquipamento}  
    Preencher campo                  ${QtdMat3}                             ${Equipamentos}


#Informar os campos Sangue derivados |${SangueDerivados}|
    Click no Item                    ${MenuSangueDerivados}  
    Click no Item                    ${LinhaSangueDerivados} 
    Click no Item                    ${BtnPadrao}   
    Click no Item                    ${LinhaFiltroSangueDer}
    Click no Item                    ${BtnOk} 
    Click no Item                    ${LinhaQtdSangueDer} 
    Preencher campo                  ${QtdMat3}                              ${SangueDerivados}

#Informar os campos Procedimentos |${Procedimentos}|
    Click no Item                    ${MenuProcedimento}     
    Click no Item                    ${LinhaProcedimento}    
    Click no Item                    ${BtnPadrao}    
    Click no Item                    ${LinhaFiltroProc} 
    Click no Item                    ${BtnOk} 
    Click no Item                    ${LinhaQtdProc}  
    Preencher campo                  ${QtdMat3}                               ${Procedimentos}

#Informar os campos Observacao |${MsgObs}|
    Click no Item                    ${MenuObservacao} 
    Preencher campo                  ${CampoObservacao}                        ${MsgObs}

#Informar os campos caixa cirurgica |${CaixaCirurgica}|
    Click no Item                    ${MenuCaixaCirurgica} 
    Click no Item                    ${LinhaCaixaCirurgica}   
    Click no Item                    ${BtnPadrao} 
    Click no Item                    ${LinhaFiltroCaixa}
    Click no Item                    ${BtnOk} 
    Click no Item                    ${LinhaQtdCaixa} 
    Preencher campo                  ${QtdMat3}                               ${CaixaCirurgica}

#Informar os campos Rouparia |${MsgRouparia}|
    Click no Item                    ${MenuRouparia}  
    Preencher campo                  ${CampoObsRouparia}                      ${MsgRouparia}

#Informar os campos Exame laboratorial |${ExameLaboratorial}|
    Click no Item                    ${MenuExame}  
    Click no Item                    ${LinhaExame}
    Click no Item                    ${BtnPadrao}  
    Click no Item                    ${LinhaFiltroExame}
    Click no Item                    ${BtnOk}
    Click no Item                    ${LinhaSetor} 
    Click no Item                    ${BtnPadrao}  
    Click no Item                    ${LinhaFiltroExame2} 
    Click no Item                    ${BtnOk} 
    Click no Item                    ${LinhaQtdExame}
    Preencher campo                  ${QtdMat3}                               ${ExameLaboratorial}

#Informar os campos Exame de imagem |${ExameImagem}|
    Click no Item                    ${MenuExameImagem}   
    Click no Item                    ${LinhaExameImagem} 
    Click no Item                    ${BtnPadrao} 
    Click no Item                    ${LinhaFiltroExame3} 
    Click no Item                    ${BtnOk}
    Click no Item                    ${LinhaSetorExame3} 
    Click no Item                    ${BtnPadrao}  
    Click no Item                    ${DescricaoExame3}
    Click no Item                    ${BtnOk}
    Click no Item                    ${LinhaQtdExame3}  
    Preencher campo                  ${QtdMat3}                               ${ExameImagem}

Informar o campo <Empresa>, <Subgrupos>, <Cirurgias>
    Click no Item                    ${MenuEmpresa}  

#Informar o campo SubgruposClick no Item                    
    Click no Item                    ${MenuSubgrupos} 
    Click no Item                    ${LinhaCodigo}
    Click no Item                    ${BtnPadrao}   
    Click no Item                    ${LinhaFiltroCodigo} 
    Click no Item                    ${BtnOk}

#Informar o campo Cirurgias 
    Click no Item                    ${MenuCirurgias}
    Click no Item                    ${LinhaCirurgias} 
    Click no Item                    ${BtnPadrao}   
    Click no Item                    ${DescricaoCirurgias}  
    Click no Item                    ${BtnOk}

Clicar no disquete |${MsgEsperada}|
    Click Elemento por titulo         Salvar
    Valida Mensagem                   ${MsgValidada}                 ${MsgEsperada}

    

