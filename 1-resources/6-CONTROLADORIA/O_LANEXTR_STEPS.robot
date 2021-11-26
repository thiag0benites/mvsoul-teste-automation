##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/O_LANEXTR_PAGE.robot
Resource    ../1-ATENDIMENTO/ATE_COMPL_STEPS.robot

*** Keywords ***
Informar a Empresa no campo correspondente
    Click no Item                    ${BtnLimpar}
    Click no Item                    ${BtnCodigoEmpresa} 
    Click no Item                    ${CampoDescricao}  
    Click no Item                    ${BtnOk} 

Selecionar a conta corrente
    Click no Item                    ${BtnContaCorremte}  
    Click no Item                    ${CampoContaCorrente}
    Click no Item                    ${BtnOk} 

Selecionar uma opcao no campo Conciliado
    Preencher campo                   ${CampoConciliado}                    Ambos
    

Indicar o periodo que se deseja trabalhar e clicar em Pesquisar
    Preencher campo                    ${CampoDataInicial}                   01/10/2014
    Preencher campo                    ${CampoDataFinal}                     31/10/2014
    Click no Item                      ${BtnPesquisar}  

Clicar no icone de adicao
    Sleep                                20                       
    Click no Item                       ${BtnAdicionar}   

Preencher os campos com as informacoes do lançamento faltante
    Click no Item                       ${CampoDataLcto}  
    Click no Item                       ${CampoLcto0}    
    Click no Item                       ${BtnLcto}
    Click no Item                       ${CampoLcto} 
    Click no Item                       ${BtnOk}
    Click no Item                       ${LinhaCampoValor} 
    Sleep                                2    
    SeleniumLibrary.Input Text          ${CampoValor}                          500
    Sleep                                2
    #Press Keys                          ${CampoValor}                          enter

Clicar em Concil para algum lancamento
    Click no Item                       ${BtnSalvar}    
    Sleep                                2
    Valida Mensagem                     ${MsgValidada}                         Registros gravados com sucesso