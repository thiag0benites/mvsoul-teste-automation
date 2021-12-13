##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/M_CENTRO_CUSTO_COMP_PAGE.robot
Resource    ../1-ATENDIMENTO/ATE_COMPL_STEPS.robot

*** Keywords ***

Preencha no campo descricao/ codigo hierarquico e Selecione no campo centro de custo consolidador |${Descricao}| |${Hierarquico}|
    Preencher campo                    ${CampoDescricao}                    ${Descricao}
    Preencher campo                    ${CampoHierarquico}                  ${Hierarquico}
    Click no Item                      ${BtnCentroCusto}
    Click no Item                      ${CampoCentroCusto}
    Click no Item                      ${BtnOk} 

Selecionar no campo Grupo de Centros de Custo 
    Click no Item                      ${BtnGrupoCusto}
    Click no Item                      ${CampoGrupoCusto}
    Click no Item                      ${BtnOk}     

Selecionar no campo Calcula Evento  
    Click no Item                      ${BtnCalculaEvento}
    Click no Item                      ${CampoSelecionadoCalculaEvento}

 Selecionar no campo Aceita Lancamento 
     Click no Item                      ${BtnCalculaEvento}
     Click no Item                      ${CampoSelecionadoAceitaLancamento}

Clicar no botao Salvar |${MsgConfirmacaoEsperada}|
    Click no Item                       ${BtnSalvar}
    Valida Mensagem                     ${MsgConfirmacao}                    ${MsgConfirmacaoEsperada}    
