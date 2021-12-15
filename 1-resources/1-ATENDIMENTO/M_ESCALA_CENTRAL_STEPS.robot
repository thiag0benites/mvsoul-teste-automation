##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/1-ATENDIMENTO/M_ESCALA_CENTRAL_PAGE.robot


*** Keywords ***
Cadastro de Escalas
    
    
    
    #Preencher campo prestador:100771
    
    
    Clicar no Campo e Preencher Informacao    ${campoPrestador}       ${campoPrestador}      100021
    #Preencher campo Hora Inicial: 00:00
    Clicar no Campo e Preencher Informacao    ${campoHoraInicial}     ${campoHoraInicial}    0800
    #Preencher campo Hora FInal: 13:00
    Clicar no Campo e Preencher Informacao    ${campoHoraFinal}       ${campoHoraFinal}      2000
    #Preencher Dia da semana
    Clicar no Campo e Preencher Informacao    ${ComboBoxDiaSemana}    ${ComboBoxDiaSemana}   Domingo

    Clicar no Campo e Preencher Informacao    ${ComboboxDinamica}    ${ComboboxDinamica}      Sim
 
    
    
    Clicar no Campo e Preencher Informacao    ${CampoSetor}           ${CampoSetor}          636
    Click no Item                             ${BtnSalvar}
    #Validar pop up de suceeso
    Valida Mensagem        ${Alerta}        Registros gravados com sucesso

    