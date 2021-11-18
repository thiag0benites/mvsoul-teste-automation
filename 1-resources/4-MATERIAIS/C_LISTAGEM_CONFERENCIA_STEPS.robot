##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/4-MATERIAIS/C_LISTAGEM_CONFERENCIA_PAGE.robot

*** Keywords ***

Consultar Lista dos Processos a Serem Validados
    Click no Item                                           ${btnPesquisar}
    Click no Item                                           ${BtnExecutarConsulta} 

   
Validacao dos Processo |${Processo}||${MsgEsperada1}||${MsgEsperada2}|
    Click no Item                                           ${CampoaValidar}
    Click no Item                                           ${BtnValidar}
    ${MsgEsperada1}                                         Replace String    ${MsgEsperada1}    processo    ${Processo}
    Valida Mensagem                                         ${Alerta}    ${MsgEsperada1}
    Click no Item                                           ${BtnAlerta}
    ${MsgEsperada2}                                         Replace String    ${MsgEsperada2}    processo    ${Processo}
    Valida Mensagem                                         ${Alerta}    ${MsgEsperada2}
    Click no Item                                           ${BtnOk}
    