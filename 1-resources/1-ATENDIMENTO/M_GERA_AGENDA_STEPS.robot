##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Geração e Liberação de Agenda
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_GERA_AGENDA_PAGE.robot

*** Variable ***

*** Keywords ***
Selecionar Escala e Periodo
    Selecionar Item Na Lista            ${BotaoLovEscala}         TERESA CRISTINA CASTRO RAMO S DOS SANTOS        TERESA CRISTINA CASTRO RAMO S DOS SANTOS
    Preencher Campo                     ${CampoPeriodo}           Semanal
    Preencher Campo                     ${CampoDtInicial}         30/11/2022
    Preencher Campo                     ${CampoDtFinal}           30/12/2022
    Send Keys                           Enter

Validar Dados da Escala
    Validar Elemento Pelo Titulo        19
    Validar Elemento Pelo Titulo        Imagem
    Validar Elemento Pelo Titulo        Sexta
    Validar Elemento Pelo Titulo        08:40
    Validar Elemento Pelo Titulo        10:40
    Validar Elemento Pelo Titulo        TERESA CRISTINA CASTRO RAMO S DOS SANTOS
    Validar Elemento Pelo Titulo        RADIOLOGIA HCN
    Validar Elemento Pelo Titulo        Não

Clicar Botao e Validar Mensagem
    [Arguments]                        ${Botao}                    ${MensagemRecebida}            ${MensagemEsperada}   
    Click no Item                      ${Botao}
    Valida Mensagem                    ${MensagemRecebida}         ${MensagemEsperada}
 
Clicar Botao Gerar 
    Clicar Botao e Validar Mensagem    ${BotaoGerar}               ${MensagemToast}        Deseja confirmar a geração de agendas para o período Semanal?

Clicar Opcao Sim Para Gerar Escala
    Clicar Botao e Validar Mensagem    ${BotaoSimConfirmar}        ${MensagemToast}        Solicitação de geração de agendas criada com sucesso. Utilize o botão de exibição de geração de agenda para acompanhar o processo.
    Click no Item                      ${BotaoOk}



    

