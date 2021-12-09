##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/4-MATERIAIS/M_MVTO_SOLIC_ESTERILIZACAO_PAGE.robot

*** Keywords ***

Consultar Lista dos Processos a Serem Validados|${MsgEsperada}|
    Click no Item                                            ${btnConfirmar}
    Preencher campo                                          ${CampoSetorDaEntrada}                        678
    Send Keys                                                enter
    Preencher campo                                          ${CampoSetorDaEntrega}                        632
    Send Keys                                                enter
    Clicar no Campo e Preencher Informacao                   ${CampoColaboradorDaEntrega}                  ${CampoColaboradorDaEntrega}            1145712
    Send Keys                                                enter
    Preencher campo                                          ${CampoAvisoDeCirurgia}                       43025
    Send Keys                                                enter
    Click no Item                                            ${DivComposicao}
    Preencher campo                                          ${CampoComposicao}                            9
    Send Keys                                                enter
    Clicar no botão Salvar do menu
    Valida Mensagem                                          ${Alerta}                                     Registros gravados com sucesso









