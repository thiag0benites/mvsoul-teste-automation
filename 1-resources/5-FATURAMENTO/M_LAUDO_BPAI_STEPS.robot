##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/5-FATURAMENTO/M_LAUDO_BPAI_PAGE.robot

*** Keywords ***

Consulta de Contas AIH|${Prontuario}|
    Wait Until Element Is Visible                         ${CampoCompetencia}                         180
    Preencher campo                                       ${CampoCompetencia}                         10/2017
    Send Keys                                             enter
    Preencher campo                                       ${CampoAtendimento}                         1000000421
    Send Keys                                             enter
    Click no Item                                         ${CampoDataEmissao}
    Valida Mensagem                                       ${Alerta}                                   Atenção: Já existe um Laudo BPAI lançado para este paciente nesta competência, deseja prosseguir?
    Click no Item                                         ${btnSim}
    Preencher campo                                       ${CampoDataEmissao}                         10/10/2017
    Send Keys                                             enter
    Preencher campo                                       ${CampoDataRealizacao}                      11/10/2017
    Send Keys                                             enter
    Preencher campo                                       ${CampoAutorizador}                         1
    Click no Item                                         ${CampoPrestadorSolicitante}    
    Preencher campo                                       ${CampoPrestadorSolicitante}                751
    Send Keys                                             enter
    Preencher campo                                       ${CampoPrestadorPrestadorResponsavel}       750
    Send Keys                                             enter
    Preencher campo                                       ${CampoEstabelecimento}                     1
    Send Keys                                             enter    
    Preencher campo                                       ${CampoProcedimento}                        0206010052
    Send Keys                                             enter
    Preencher campo                                       ${CampoCid10}                               A011
    Click no Item                                         ${DivQuantidade}
    Preencher campo                                       ${CampoQuantidade}                          1



