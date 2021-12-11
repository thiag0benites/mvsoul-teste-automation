##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/4-MATERIAIS/M_MVTO_SOLIC_ESTERILIZACAO_PAGE.robot

*** Keywords ***

Listagem de Solicitações de Esterilização|${SetorResponsavelEntrega}||${SetorDaEntrega}||${ColaboradorDaEntrega}||${AvisoDeCirurgia}||${Composicao}||${MsgEsperada}|
    Wait Until Element Is Visible                            ${btnNovo}                                    60
    Click no Item                                            ${btnNovo}
    Preencher campo                                          ${CampoSetorResponsavelEntrega}              ${SetorResponsavelEntrega}
    Send Keys                                                enter
    Preencher campo                                          ${CampoSetorDaEntrega}                        ${SetorDaEntrega}
    Send Keys                                                enter
    Clicar no Campo e Preencher Informacao                   ${CampoColaboradorDaEntrega}                  ${CampoColaboradorDaEntrega}            ${ColaboradorDaEntrega}
    Send Keys                                                enter
    Preencher campo                                          ${CampoAvisoDeCirurgia}                       ${AvisoDeCirurgia}
    Send Keys                                                enter
    Click no Item                                            ${DivComposicao}
    #Depois de cada teste precisamos mudar o valor do CAMPO COMPOSICAO 
    Preencher campo                                          ${CampoComposicao}                            ${Composicao}
    Send Keys                                                enter
    Sleep    3
    Clicar Botao Salvar |${MsgEsperada}|
    









