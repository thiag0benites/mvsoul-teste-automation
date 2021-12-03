##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/6-CONTROLADORIA/M_CONTRATO_ADIANT_RECEB_PAGE.robot
Resource          ../1-ATENDIMENTO/ATE_COMPL_STEPS.robot

*** Keywords ***
Informar a empresa que sera responsavel pelo contrato de adiantamento
    Click no Item                    ${BtnEmpresa}  
    Preencher campo                  ${Filtro}                    5
    Click no Item                    ${BtnFiltro} 
    Click no Item                    ${BtnOk} 

Selecionar o tipo de adiantamento que sera realizado Financeiro
    #Preencher campo                  ${ComboxAdiantamento}                Financeiro  
    Seleciona Item Combobox          ${ComboxAdiantamento}                Financeiro
    Click no Item                    ${ComboboxContratante} 

Selecionar o tipo de contratante
    Seleciona Item Combobox           ${ComboboxContratante}               Paciente

Selecionar o contratante
    Click no Item                      ${BtnContratante} 
    Preencher campo                    ${Filtro}                            abadia
    Click no Item                      ${BtnOk} 

Atribuir uma descricao ao contrato e tambem atribuir um numero de contrato
    Preencher campo                    ${DescricaoContrato}                 Telefone
    Preencher campo                    ${NumeroContrato}                     113

Atribuir uma data de vencimento de pagamento do contrato
    Preencher campo                    ${DiaVencimento}                       5

Atribuir da forma de pagamento
    Click no Item                       ${BtnPgto} 
    Preencher campo                     ${Filtro}                              3
    Click no Item                       ${BtnFiltro} 
    Click no Item                       ${BtnOk} 
    Preencher campo                     ${ValorContrato}                        5
    Preencher campo                     ${DataContrato}                         02/12/2021

Clicar no icone de salvar do menu principal
    Click Elemento por titulo            Salvar
    Valida Mensagem                      ${MsgValidacao}                  Registros gravados com sucesso

Clicar no botao Gerar Contas a Receber
    Click no Item                        ${BtnGerar}  

Cadastrar Conta contabil
    Click no Item                        ${BtnContaContabil} 
    Preencher campo                      ${Filtro}                              2
    Click no Item                        ${BtnFiltro} 
    Click no Item                        ${BtnOk} 

Cadastrar Tipo de documento
    Click no Item                         ${BtnDoc}
    Preencher campo                       ${Filtro}                              bol
    Click no Item                         ${BtnFiltro} 
    Click no Item                         ${BtnOk} 

Cadastrar moeda a ser utilizada
    Click no Item                         ${BtnMoeda}
    Preencher campo                       ${Filtro}                              1
    Click no Item                         ${BtnFiltro} 
    Click no Item                         ${BtnOk} 

Cadastrar o setor a conta contabil a conta de custo e o valor do rateio
    Click no Item                         ${LinhaSetor}
    Click no Item                         ${BtnCompatilha}     
    Click no Item                         ${FiltroSetor} 
    Click no Item                         ${BtnOk} 
    Click no Item                         ${LinhaConta}  
    Click no Item                         ${BtnCompatilha} 
    Preencher campo                       ${Filtro}                              ener
    Click no Item                         ${BtnOk} 
    Click no Item                         ${LinhaRateio} 
    Preencher campo                       ${ValorRateio}                          5

Clicar no botao Concluir
    Click no Item                         ${BtnConcluir}  
    Valida Mensagem                       ${MsgUsuario}                            gerada com sucesso!
    Click no Item                         ${BtnOk2} 
    Sleep                                    3    