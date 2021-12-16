##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/O_GERA_PROG_PAGE.robot
Resource    ../1-ATENDIMENTO/ATE_COMPL_STEPS.robot

*** Variables ***
*** Keywords ***


Inserir no campo Descricao a descricao da previsao a ser cadastrada |${Descricao2}|
    Preencher campo                    ${CampoDescricao}                    ${Descricao2}
Informar no campo dia o dia previsto de pagamento |${Dia}|
     Preencher campo                    ${DiaPrevisto}                       ${Dia}     
Selecionar no campo Periodicidade |${Periodo}|
    Seleciona Item Combobox             ${CampoPeriocidade}                  ${Periodo}

Selecionar no campo Vencto dia nao util |${Vencimento}|
    Seleciona Item Combobox             ${CampoVencimento}                   ${Vencimento}
Inserir no campo Valor |${Valor}|
    Preencher campo                      ${CampoValor}                        ${Valor}
Inserir no campo mes ano inic do inicio da previsao |${MesAnoInicial}| |${MesAnoFinal}|
    Preencher campo                      ${MesAnoInicio}                       ${MesAnoInicial}
    Preencher campo                      ${MesAnoFim}                          ${MesAnoFinal}
Selecionar na lov do campo tipo documento |${TipoDoc}|
    Click no Item                        ${BtnDoc}   
    Preencher campo                      ${CampoFiltroDoc}                      ${TipoDoc}
    Click no Item                        ${BtnFiltro}                           
    Click no Item                        ${BtnOk}
Selecionar na lov do campo Fornecedor |${Fornecedor}|
    Click no Item                        ${BtnFornecedor}   
    Preencher campo                      ${CampoFiltroDoc}                      ${Fornecedor}
    Click no Item                        ${BtnFiltro}                           
    Click no Item                        ${BtnOk}
Indicar no campo tipo de programacao da previsao |${Programacao}|
    Seleciona Item Combobox              ${ComboboxTipo}                        ${Programacao}

    
Selecionar no campo Contabilizar |${Contabilizar}|
    Seleciona Item Combobox              ${ItemContabilizar}                    ${Contabilizar}

${Contabilizar} =  ${Sim}
${Contabilizar} =  ${Não}
    
  
    # FOR    ${i}    IN RANGE    ${Contabilizar}  
    #     ${random}=    Evaluate    random.randint(0, 10)
    #     IF  ${Contabilizar} == ${Não} 
    #     Pass Execution  "${Contabilizar} == ${Não}" 
        
    #     #Click no Item    ${TipoVencimento} 
    #     #Seleciona Item Combobox  ${ItemVencimento} ${TipoVencimento}
    #     Log To Console     ${TipoVencimento} 
    #     ELSE IF    ${Contabilizar} == ${Sim}
    #     Pass Execution  "${Contabilizar} == ${Sim}"
    #     Log To Console    ${PrevisaoConta} 
    #     END
    # END

    Run Keyword If  "${Contabilizar} == ${Não}"   log to console   \${TipoVencimento} 
    Run Keyword If  '"${Contabilizar} == ${Sim}"  log to console  \${PrevisaoConta} 
Selecionar no campo Tp Prev Contab |${PrevisaoConta}|
    Seleciona Item Combobox              ${PrevisaoContab}                       ${PrevisaoConta}

Verificar a informacao contida no campo Tipo de Vencimento |${TipoVencimento}|
    Seleciona Item Combobox               ${ItemVencimento}                      ${TipoVencimento}
Selecionar no campo historico padrao |${Historico}|
    Click no Item                         ${BtnHistorico}
    Preencher campo                       ${CampoFiltroDoc}                      ${Historico}
    Click no Item                         ${BtnFiltro}                           
    Click no Item                         ${BtnOk}
Clicar no botao Previsao
    Click no Item                         ${BtnPrevisao}
Informar no bloco Compartilhamento das contas no campo Setor de Producao atraves da lov ou digitando o setor
    Click no Item                         ${LinhaSetor}  
    Click no Item                         ${BtnSetor} 
    Click no Item                         ${LinhaSetor2}                        
    Click no Item                         ${BtnOk}
Selecionar no campo Conta de Custo a conta de custo |${ContaCusto}|
    Click no Item                          ${LinhaCusto} 
    Click no Item                          ${BtnCusto}
    Preencher campo                        ${CampoFiltroDoc}                      ${ContaCusto}
    Click no Item                          ${BtnFiltro}                           
    Click no Item                          ${BtnOk} 
Informar no campo Valor Compartilhamento |${ValorCompartilha}|
    Click no Item                          ${LinhaCompartilha}  
    Preencher campo                        ${CampoCompartilha}                     ${ValorCompartilha}

Clicar no botao Gerar
     Click no Item                          ${BtnGerar} 
     Sleep                                    3    

Captura do protocolo da previsao de pagamentos|${suite}|${id}|
    Sleep    1
    Should Not Be Empty   ${MsgUsuario}
    ${protocolo}    Get Text    ${MsgUsuario}    
    Altera massa de dados da "${suite}", linha "${id}", coluna "MsgEsperada", valor "${protocolo}"
    Sleep    3

