##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Prescrição Padrão
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_PREPAD_PAGE.robot
Resource    ../6-CONTROLADORIA/M_CAUCAO_STEPS.robot

*** Variable ***

*** Keywords ***
Cadastrar Prescricao Padrao |${Descricao}| |${Medico}| |${TpObjeto}|
    Wait Until Element Is Visible    ${CampoEdit}    180
    Preencher Campo    ${CampoEdit}    ${Descricao}
    Clicar Item e Selecionar da Lista    ${CampoMedico}    ${BotaoLovEdit}    ${Medico}    ${Medico}
    Selecionar Item Na Lista    ${BotaoLovTpObjeto}    ${TpObjeto}    ${TpObjeto}

Preencher Dados do Item de Prescricao |${Esquema}| |${Item}| |${Quantidade}| |${Frequencia}|
    Clicar Item e Selecionar da Lista    ${CampoEsquema}    ${BotaoLovEdit}    ${Esquema}    ${Esquema}
    Selecionar Item Na Lista    ${BotaoLovEdit}    ${Item}    ${Item}
    Preencher Campo   ${CampoEdit}    ${Quantidade}
    Clicar Item e Selecionar da Lista    ${CampoFrequencia}    ${BotaoLovEdit}    ${Frequencia}    ${Frequencia}

### Keyword para retornar massa de dados para status inicial do teste ###
Excluir Prescricao Padrao
    Click no Item   ${CampoMedico}
    Click Elemento por titulo    Apagar
    