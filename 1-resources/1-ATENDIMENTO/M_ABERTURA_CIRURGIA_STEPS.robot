##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/5-FATURAMENTO/M_LAUDO_BPAI_PAGE.robot

*** Keywords ***

Identificacao do Paciente|${Competencia}||${Atendimento}||${MensagemEsperada1}||${DataEmissao}||${DataRealizacao}||${Autorizador}||${PrestadorSolicitante}||${PrestadorResponsavel}||${Estabelecimento}|
    Wait Until Element Is Visible                         ${CampoCompetencia}                         180
    Preencher campo                                       ${CampoCompetencia}                         ${Competencia}
    Send Keys                                             enter
    Preencher campo                                       ${CampoAtendimento}                         ${Atendimento}
    Send Keys                                             enter
    Click no Item                                         ${CampoDataEmissao}
    Valida Mensagem                                       ${Alerta}                                   ${MensagemEsperada1}
    Click no Item                                         ${btnSim}
    Preencher campo                                       ${CampoDataEmissao}                         ${DataEmissao}
    Send Keys                                             enter
    Preencher campo                                       ${CampoDataRealizacao}                      ${DataRealizacao}
    Send Keys                                             enter
    Preencher campo                                       ${CampoAutorizador}                         ${Autorizador}
    Send Keys                                             enter
    Click no Item                                         ${CampoPrestadorSolicitante}    
    Preencher campo                                       ${CampoPrestadorSolicitante}                ${PrestadorSolicitante}
    Send Keys                                             enter
    Preencher campo                                       ${CampoPrestadorResponsavel}                ${PrestadorResponsavel}
    Send Keys                                             enter
    Preencher campo                                       ${CampoEstabelecimento}                     ${Estabelecimento}
    Send Keys                                             enter 

Procedimentos Solicitados|${Procedimento}||${Cid10}||${Quantidade}|       
    Preencher campo                                       ${CampoProcedimento}                        ${Procedimento}
    Send Keys                                             enter
    Preencher campo                                       ${CampoCid10}                               ${Cid10}
    Click no Item                                         ${DivQuantidade}
    Preencher campo                                       ${CampoQuantidade}                          ${Quantidade}

Justificativa do Procedimento Solicitado|${JustiDoProcedimento}||${ResumoAnamnese}||${MensagemEsperada2}|

    Click no Item                                         ${CampoJustiDoProcedimento}
    Preencher campo                                       ${CampoJustiDoProcedimento}                 ${JustiDoProcedimento}
    Send Keys                                             tab
    Preencher campo                                       ${CampoResumoAnamnese}                      ${ResumoAnamnese}
    Click no Item                                         ${btnSalvar}
    Clicar Botao Salvar |${MensagemEsperada2}|


