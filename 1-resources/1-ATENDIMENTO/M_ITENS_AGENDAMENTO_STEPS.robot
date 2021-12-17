##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Itens de Agendamento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_ITENS_AGENDAMENTO_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher Informacoes do Item |${Descricao}| |${Mnemonico}| |${Exame}| |${Tempo}| |${Obs}|
    Preencher Campo                         ${CampoDescricao}               ${Descricao}                                 
    Preencher Campo                         ${CampoMnemonico}               ${Mnemonico}  
    Preencher Campo                         ${CampoExame}                   ${Exame}
    Preencher Campo                         ${CampoTempo}                   ${Tempo}
    Preencher Campo                         ${CampoObs}                     ${Obs}

Preencher Recurso |${Recurso}|
    Clicar no Campo e Preencher Informacao    ${DivRecurso}    ${CampoRecurso}    ${Recurso}
Preencher Prestador |${Prestador}|              
    Clicar no Campo e Preencher Informacao    ${AbaPrestador}    ${CampoPrestador}    ${Prestador}
Preencher Equipamento |${Equipamento}|
    Clicar no Campo e Preencher Informacao    ${AbaEquipamento}    ${CampoEquipamento}    ${Equipamento}    
Preencher Item |${Item}| 
    Clicar no Campo e Preencher Informacao    ${AbaItens}    ${CampoItens}    ${Item}    

Confirmar Alteracao |${MsgSalva}| 
    Clicar Botao Salvar    ${MsgSalva}



