##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/M_PLACON_PAGE.robot
Resource    ../1-ATENDIMENTO/ATE_COMPL_STEPS.robot

*** Keywords ***
Informar o numero no campo codigo da empresa
    Click no Item                    ${BtnLimpar} 
    Click no Item                    ${BtnCodigo} 
    Click no Item                    ${CampoBuscaEmpresa}  
    Click no Item                    ${BtnOk} 
    Click Elemento por titulo        Procurar
    #Click no Item                    ${BtnNotificacao} 

No grid Contas clicar no campo codigo  
    Preencher campo                  ${CampoConta}                    5501
    Send Keys    enter
    
Clicar Descricao da Conta
    
    Preencher campo                  ${CampoConta}                    ESTOQUE GAS
    Send Keys    enter

Clicar no campo Natureza
   
    #SeleniumLibrary.Input Text    ${''}    ${''}
    #Seleciona Item Combobox    ${BtnNatureza}    Credora
    Preencher campo                   ${BtnNatureza}    Credora
    Press Keys    ${BtnNatureza}        ENTER
    #Click no Item                     ${BtnNatureza}

    
    

Clicar no campo Grupo da Conta 
    Click no Item                    ${BtnGrupoConta}
    Click no Item                    ${CampoGrupoConta}
    Click no Item                    ${BtnOk} 

Indicar no campo Exporta ANS 
    Click no Item                    ${CheckBoxExpotaAns}

Clicar no botao Salvar
    #Click Elemento por titulo        Salvar