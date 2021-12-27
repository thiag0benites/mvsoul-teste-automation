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
Informar a empresa que sera responsavel pelo contrato de adiantamento |${FiltroEmpresa}|
    Click no Item                    ${BtnEmpresa}  
    Preencher campo                  ${Filtro}                    ${FiltroEmpresa}
    Click no Item                    ${BtnFiltro} 
    Click no Item                    ${BtnOk} 

Selecionar o <tipo de adiantamento que sera realizado Financeiro> |${TipoAdiantamento}|, <tipo de contratante> |${TipoContratante}|, <contratante> |${SelecionarPessoa}|

#Selecionar o tipo de adiantamento que sera realizado Financeiro
    #Preencher campo                  ${ComboxAdiantamento}                Financeiro  
    Seleciona Item Combobox          ${ComboxAdiantamento}                ${TipoAdiantamento}
    Click no Item                    ${ComboboxContratante} 

#Selecionar o tipo de contratante
    Seleciona Item Combobox           ${ComboboxContratante}              ${TipoContratante}

#Selecionar o contratante 
    Click no Item                      ${BtnContratante} 
    Preencher campo                    ${Filtro}                           ${SelecionarPessoa}
    Click no Item                      ${BtnOk} 


Atribuir <uma descricao ao contrato e tambem atribuir um numero de contrato> |${CaracContrato}| |${NrContrato}|, <uma data de vencimento de pagamento do contrato> |${Vencimento}|, <da forma de pagamento> |${FormaPgto}| |${ValorContrato2}| |${Data}|
#Atribuir uma descricao ao contrato e tambem atribuir um numero de contrato
    Preencher campo                    ${DescricaoContrato}                 ${CaracContrato}
    Preencher campo                    ${NumeroContrato}                    ${NrContrato}

#Atribuir uma data de vencimento de pagamento do contrato
    Preencher campo                    ${DiaVencimento}                     ${Vencimento}

#Atribuir da forma de pagamento
    Click no Item                       ${BtnPgto} 
    Preencher campo                     ${Filtro}                            ${FormaPgto}
    Click no Item                       ${BtnFiltro} 
    Click no Item                       ${BtnOk} 
    Preencher campo                     ${ValorContrato}                     ${ValorContrato2}
    Preencher campo                     ${DataContrato}                      ${Data}


Clicar no <icone de salvar do menu principal> |${MsgVerificada}|, <botao Gerar Contas a Receber>
#Clicar no icone de salvar do menu principal
    Click Elemento por titulo            Salvar
    Validar Informacao Item              ${MsgValidacao}                      ${MsgVerificada}

#Clicar no botao Gerar Contas a Receber
    Click no Item                        ${BtnGerar}  


Cadastrar <Conta contabil> |${FiltroContabil}|, <Tipo de documento> |${TipoDoc}|, <moeda a ser utilizada> |${Moeda}|, <o setor a conta contabil a conta de custo e o valor do rateio> |${TipoConta}| |${ValorRateio2}|
#Cadastrar Conta contabil
    Click no Item                        ${BtnContaContabil} 
    Preencher campo                      ${Filtro}                              ${FiltroContabil}
    Click no Item                        ${BtnFiltro} 
    Click no Item                        ${BtnOk} 

#Cadastrar Tipo de documento
    Click no Item                         ${BtnDoc}
    Preencher campo                       ${Filtro}                              ${TipoDoc}
    Click no Item                         ${BtnFiltro} 
    Click no Item                         ${BtnOk} 

#Cadastrar moeda a ser utilizada
    Click no Item                         ${BtnMoeda}
    Preencher campo                       ${Filtro}                              ${Moeda}
    Click no Item                         ${BtnFiltro} 
    Click no Item                         ${BtnOk} 

#Cadastrar o setor a conta contabil a conta de custo e o valor do rateio
    Click no Item                         ${LinhaSetor}
    Click no Item                         ${BtnCompatilha}     
    Click no Item                         ${FiltroSetor} 
    Click no Item                         ${BtnOk} 
    Click no Item                         ${LinhaConta}  
    Click no Item                         ${BtnCompatilha} 
    Preencher campo                       ${Filtro}                              ${TipoConta}
    Click no Item                         ${BtnOk} 
    Click no Item                         ${LinhaRateio} 
    Preencher campo                       ${ValorRateio}                         ${ValorRateio2}

Clicar em Concluir |${MsgValidada}|
    Click no Item                         ${BtnConcluir}  
    #Valida Mensagem                       ${MsgUsuario}                           ${MsgValidada}
    
    Sleep                                    3    

Captura do protocolo da previsao de pagamentos|${suite}|${id}|
    Sleep    1
    Should Not Be Empty   ${MsgUsuario}
    ${protocolo}    Get Text    ${MsgUsuario}    
    Altera massa de dados da "${suite}", linha "${id}", coluna "MsgValidada", valor "${protocolo}"
    Sleep    3
    Click no Item                         ${BtnOk2} 



###############################################################################################################

#2Informar a empresa que sera responsavel pelo contrato de adiantamento |${FiltroEmpresa}|
    Click no Item                    ${BtnEmpresa}  
    Preencher campo                  ${Filtro}                    ${FiltroEmpresa}
    Click no Item                    ${BtnFiltro} 
    Click no Item                    ${BtnOk} 




#2Selecionar o <tipo de adiantamento que sera realizado Financeiro> |${TipoAdiantamento}|, <tipo de contratante> |${TipoContratante}|, <contratante> |${SelecionarPessoa}|
#Selecionar o tipo de adiantamento que sera realizado Financeiro 
    Seleciona Item Combobox          ${ComboxAdiantamento}          ${TipoAdiantamento}
    Click no Item                    ${ComboboxContratante}

#Selecionar o tipo de contratante
    Seleciona Item Combobox           ${ComboboxContratante}         ${TipoContratante}

#Selecionar o contratante
    Click no Item                      ${BtnContratante} 
    Preencher campo                    ${Filtro}                      ${SelecionarPessoa}
    Click no Item                      ${BtnOk} 

Atribuir uma descricao ao contrato e tambem atribuir um numero de contrato |${CaracContrato}| |${NrContrato}|
    Preencher campo                    ${DescricaoContrato}                 ${CaracContrato}
    Preencher campo                    ${NumeroContrato}                    ${NrContrato}

Selecionar o pacote que esta sendo contratado pelo paciente e atribuir forma de pagamento |${Pacote}|
    Click no Item                      ${BtnPacote} 
    Preencher campo                    ${Filtro}                           ${Pacote}
    Click no Item                      ${BtnFiltro} 
    Click no Item                      ${BtnOk} 
    
Atribuir uma data de vencimento de pagamento do contrato |${Vencimento}| |${Data}|
    Preencher campo                    ${DiaVencimento}                    ${Vencimento}
    Preencher campo                    ${DataContrato}                     ${Data}

#2Clicar no <icone de salvar do menu principal> |${MsgVerificada}|, <botao Gerar Contas a Receber>
    Click Elemento por titulo            Salvar
    Validar Informacao Item             ${MsgValidacao}                    ${MsgVerificada}

#Clicar no botao Gerar Contas a Receber
    Click no Item                        ${BtnGerar}

#2Cadastrar <Conta contabil> |${FiltroContabil}|, <Tipo de documento> |${TipoDoc}|, <moeda a ser utilizada> |${Moeda}|, <o setor a conta contabil a conta de custo e o valor do rateio> |${TipoConta}| |${ValorRateio2}|
    Click no Item                        ${BtnContaContabil} 
    Preencher campo                      ${Filtro}                               ${FiltroContabil}
    Click no Item                        ${BtnFiltro} 
    Click no Item                        ${BtnOk} 

#Cadastrar Tipo de documento |${TipoDoc}|
    Click no Item                         ${BtnDoc}
    Preencher campo                       ${Filtro}                               ${TipoDoc}
    Click no Item                         ${BtnFiltro} 
    Click no Item                         ${BtnOk} 

#Cadastrar moeda a ser utilizada |${Moeda}|
    Click no Item                         ${BtnMoeda}
    Preencher campo                       ${Filtro}                               ${Moeda}
    Click no Item                         ${BtnFiltro} 
    Click no Item                         ${BtnOk} 

#Cadastrar o setor a conta contabil a conta de custo e o valor do rateio |${TipoConta}| |${ValorRateio2}|
    Click no Item                         ${LinhaSetor}
    Click no Item                         ${BtnCompatilha}     
    Click no Item                         ${FiltroSetor} 
    Click no Item                         ${BtnOk} 
    Click no Item                         ${LinhaConta}  
    Click no Item                         ${BtnCompatilha} 
    Preencher campo                       ${Filtro}                                 ${TipoConta}
    Click no Item                         ${BtnOk} 
    Click no Item                         ${LinhaRateio} 
    Preencher campo                       ${ValorRateio}                            ${ValorRateio2}

#2Clicar em Concluir |${MsgValidada}|
    Click no Item                         ${BtnConcluir}  
    #Valida Mensagem                       ${MsgUsuario}                             ${MsgValidada}
    #Click no Item                         ${BtnOk2} 
    Sleep                                    2  
    

#2Captura do protocolo da previsao de pagamentos|${suite}|${id}|
    Sleep    1
    Should Not Be Empty   ${MsgUsuario}
    ${protocolo}    Get Text    ${MsgUsuario}    
    Altera massa de dados da "${suite}", linha "${id}", coluna "MsgValidada", valor "${protocolo}"
    Sleep    3

