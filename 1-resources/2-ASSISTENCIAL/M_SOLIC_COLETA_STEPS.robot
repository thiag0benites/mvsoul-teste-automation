##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Solicitação de Coleta de Material
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_SOLIC_COLETA_PAGE.robot

*** Variable ***

*** Keywords ***
Pesquisar Atendimento |${Atendimento}| |${MensagemPaciente}| |${Paciente}|
    Click Elemento por titulo    Procurar
    Preencher Campo    ${CampoAtendimento}    ${Atendimento}
    Click Elemento por titulo    Executar Consulta
    Valida Mensagem    ${MensagemToast}    ${MensagemPaciente}
    Click no Item    ${BotaoOK}
    Validar Elemento Pelo Titulo    ${Paciente}

Incluir Amostra |${Tpcoleta}| |${Material}|
    Click Elemento por titulo    Adicionar
    Clicar Item e Selecionar da Lista    ${CampoTbColeta}    ${BotaoLovEdit}    ${Tpcoleta}    ${Tpcoleta}
    Clicar no Campo e Preencher Informacao    ${CampoMaterial}    ${CampoLovEdit}    ${Material}

Incluir Exame |${Exame}|
    Clicar Item e Selecionar da Lista    ${CampoExame}    ${BotaoLovEdit}    ${Exame}    ${Exame}
