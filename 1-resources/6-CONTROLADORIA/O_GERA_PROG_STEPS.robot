##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/O_GERA_PROG_PAGE.robot
Resource    ../1-ATENDIMENTO/ATE_COMPL_STEPS.robot

*** Keywords ***

Inserir no campo Descricao a descricao da previsao a ser cadastrada 
    Preencher campo                    ${CampoDescricao}                    Receita300

 Informar no campo dia o dia previsto de pagamento
     Preencher campo                    ${DiaPrevisto}                       10       

Selecionar no campo Periodicidade
    Seleciona Item Combobox             ${CampoPeriocidade}                  Mensal

Selecionar no campo Vencto dia nao util
    Seleciona Item Combobox             ${CampoVencimento}                   Não Controlar

Inserir no campo Valor
    Preencher campo                      ${CampoValor}                        1

Inserir no campo mes ano inic do inicio da previsao
    Preencher campo                      ${MesAnoInicio}                       02/2019
    Preencher campo                      ${MesAnoFim}                          03/2020

Selecionar na lov do campo tipo documento
    Click no Item                        ${BtnDoc}   
    Preencher campo                      ${CampoFiltroDoc}                      bol
    Click no Item                        ${BtnFiltro}                           
    Click no Item                        ${BtnOk}

Selecionar na lov do campo Fornecedor
    Click no Item                        ${BtnFornecedor}   
    Preencher campo                      ${CampoFiltroDoc}                      1000
    Click no Item                        ${BtnFiltro}                           
    Click no Item                        ${BtnOk}

Indicar no campo tipo de programacao da previsao
    Seleciona Item Combobox              ${ComboboxTipo}                        Documento

Selecionar no campo Contabilizar
    Seleciona Item Combobox              ${ItemContabilizar}                     Não

Selecionar no campo Tp Prev Contab
    Seleciona Item Combobox              ${PrevisaoContab}                       Material

Verificar a informacao contida no campo Tipo de Vencimento
    Seleciona Item Combobox               ${ItemVencimento}                      Comprometido

Selecionar no campo historico padrao  
    Click no Item                         ${BtnHistorico}
    Preencher campo                       ${CampoFiltroDoc}                      depo
    Click no Item                         ${BtnFiltro}                           
    Click no Item                         ${BtnOk}

Clicar no botao Previsao
    Click no Item                         ${BtnPrevisao}

Informar no bloco Compartilhamento das contas no campo Setor de Producao atraves da lov ou digitando o setor
    Click no Item                         ${LinhaSetor}  
    Click no Item                         ${BtnSetor} 
    Click no Item                         ${LinhaSetor2}                        
    Click no Item                         ${BtnOk}

Selecionar no campo Conta de Custo a conta de custo
    Click no Item                          ${LinhaCusto} 
    Click no Item                          ${BtnCusto}
    Preencher campo                        ${CampoFiltroDoc}                      agua
    Click no Item                          ${BtnFiltro}                           
    Click no Item                          ${BtnOk} 

Informar no campo Valor Compartilhamento
    Click no Item                          ${LinhaCompartilha}  
    Preencher campo                        ${CampoCompartilha}                     1

Clicar no botao Gerar
    Click no Item                          ${BtnGerar} 
    Sleep                                    3   
    Get Text                               ${MsgUsuario}        
    #Element Attribute Value Should Be      ${MsgUsuario}    |value|    expected     
                    

#######################################################################################################################

2Inserir no campo Descricao a descricao da previsao a ser cadastrada 
    Preencher campo                    ${CampoDescricao}                    Receita300

 2Informar no campo dia o dia previsto de pagamento
     Preencher campo                    ${DiaPrevisto}                       10       

2Selecionar no campo Periodicidade
    Seleciona Item Combobox             ${CampoPeriocidade}                  Mensal

2Selecionar no campo Vencto dia nao util
    Seleciona Item Combobox             ${CampoVencimento}                   Não Controlar

2Inserir no campo Valor
    Preencher campo                      ${CampoValor}                        1

2Inserir no campo mes ano inic do inicio da previsao
    Preencher campo                      ${MesAnoInicio}                       02/2019
    Preencher campo                      ${MesAnoFim}                          03/2020

2Selecionar na lov do campo tipo documento
    Click no Item                        ${BtnDoc}   
    Preencher campo                      ${CampoFiltroDoc}                      bol
    Click no Item                        ${BtnFiltro}                           
    Click no Item                        ${BtnOk}

2Selecionar na lov do campo Fornecedor
    Click no Item                        ${BtnFornecedor}   
    Preencher campo                      ${CampoFiltroDoc}                      1000
    Click no Item                        ${BtnFiltro}                           
    Click no Item                        ${BtnOk}

2Indicar no campo tipo de programacao da previsao
    Seleciona Item Combobox              ${ComboboxTipo}                        Documento

2Selecionar no campo Contabilizar
    Seleciona Item Combobox              ${ItemContabilizar}                     Sim

2Selecionar no campo Tp Prev Contab
    Seleciona Item Combobox              ${PrevisaoContab}                       Serviço

2Verificar a informacao contida no campo Tipo de Vencimento
    Seleciona Item Combobox               ${ItemVencimento}                      Comprometido

2Selecionar no campo historico padrao  
    Click no Item                         ${BtnHistorico}
    Preencher campo                       ${CampoFiltroDoc}                      depo
    Click no Item                         ${BtnFiltro}                           
    Click no Item                         ${BtnOk}

2Clicar no botao Previsao
    Click no Item                         ${BtnPrevisao}

2Informar no bloco Compartilhamento das contas no campo Setor de Producao atraves da lov ou digitando o setor
    Click no Item                         ${LinhaSetor} 
    Click no Item                         ${BtnSetor} 
    Click no Item                         ${LinhaSetor2}                        
    Click no Item                         ${BtnOk}

2Selecionar no campo Conta de Custo a conta de custo
    Click no Item                          ${LinhaCusto} 
    Click no Item                          ${BtnCusto}
    Preencher campo                        ${CampoFiltroDoc}                      agua
    Click no Item                          ${BtnFiltro}                           
    Click no Item                          ${BtnOk} 

2Informar no campo Valor Compartilhamento
    Click no Item                          ${LinhaCompartilha}  
    Preencher campo                        ${CampoCompartilha}                     1

2Clicar no botao Gerar
    Click no Item                          ${BtnGerar} 
    Sleep                                    3   
    Get Text                               ${MsgUsuario}        
    #Element Attribute Value Should Be      ${MsgUsuario}    |value|    expected     
                    