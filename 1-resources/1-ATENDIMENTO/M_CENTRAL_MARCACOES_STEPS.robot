##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/1-ATENDIMENTO/M_CENTRAL_MARCACOES_PAGE.robot

*** Keywords ***

Dados Paciente
    Preencher campo                           ${CampoPaciente}    11168
    Send Keys                                 enter
    Selecionar Item Na Lista                  ${btnConvenio}      PARTICULAR BRASILIA    PARTICULAR BRASILIA
    Click no Item                             ${CampoPlano}    
    Preencher campo                           ${CampoPlano}       1
    Send Keys                                 enter
    Preencher campo                           ${CampoDDI}         55
    Preencher campo                           ${CampoDDD}         21
 
    



Itens a Agendar
    Click no Item                             ${CampoItem}    
    Preencher campo                           ${CampoEmEdicao}         962     #ITEM
    Send Keys                                 enter
 #   Clicar no Campo e Preencher Informacao    ${CampoItem}         ${CampoItem}         962   #ITEM
    Send Keys                                 enter
    Preencher campo                           ${CampoEmEdicao}     5739   #PRESTADOR
    Send Keys                                 enter
    Sleep    0.5
    Preencher campo                           ${CampoEmEdicao}     32     #SERVICO
    Send Keys                                 enter
    Sleep    0.5
    Preencher campo                           ${CampoEmEdicao}     3      #TIPO DE ATENDIMENTO
    Send Keys                                 enter
    Sleep    0.5
    Preencher campo                           ${CampoEmEdicao}     1170   #SETOR
    Send Keys                                 enter
    Sleep    0.5
    Click no Item                             ${btnProximo1}



Agendamento
    Click no Item                             ${CheckBox}
    Click Elemento por titulo                 09:00
    Click no Item                             ${btnProximo2}
    Click no Item                             ${btnProximo3}
    Click no Item                             ${btnConcluir}
    Valida Mensagem                           ${Alerta}            Agendamento realizado com sucesso!
    Click no Item                             ${btnOK}


    
    