##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Movimentação de Arsenal - Saída
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_MVTO_ARSENAL_SAI_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Dados da Movimentacao |${SetorCME}| |${ColabRetirante}| |${Colaborador}| |${Setor}| |${Localidade}|
    Selecionar Item Na Lista    ${BotaoLovSetorCME}    ${SetorCME}    ${SetorCME}
    Selecionar Item Na Lista    ${BotaoLovColabRetirante}    ${ColabRetirante}    ${ColabRetirante}
    Selecionar Item Na Lista    ${BotaoLovColaborador}    ${Colaborador}    ${Colaborador}
    Selecionar Item Na Lista    ${BotaoLovSetor}    ${Setor}    ${Setor}
    Selecionar Item Na Lista    ${BotaoLovLocalidade}    ${Localidade}    ${Localidade}

Selecionar Composicao |${CdComposicao}|
    Clicar no Campo e Preencher Informacao    ${CampoCdComposicao}    ${CampoEdit}    ${CdComposicao}
    Send Keys    tab
    Click no Item    ${CbConfirmarSaida}

Validar Saida de Arsenal |${MensagemSucesso}|
    Clicar Botao Salvar |${MensagemSucesso}|
    Click no Item    ${BotaoOK}
### Keyword para retornar massa de dados para status inicial do teste ###

Liberar Entrada de Arsenal |${SetorCME}| |${Colaborador}| |${CdComposicao}| |${MensagemEntrada}|
    Click Elemento por titulo    Sair
    Acessar a tela "Serviços de Apoio>Central de Materiais Esterilizados>Movimentações>Arsenal>Entrada"@nprint @nao
    Selecionar Item Na Lista    ${BotaoLovSetorCME}    ${SetorCME}    ${SetorCME}
    Selecionar Item Na Lista    ${BotaoLovColaborador}    ${Colaborador}    ${Colaborador}
    Clicar no Campo e Preencher Informacao    ${CampoCdComposicao}    ${CampoEdit}    ${CdComposicao}
    Send Keys    tab
    Click no Item    ${CbConfirmarEntrada}
    Clicar Botao Salvar |${MensagemEntrada}|
    Click no Item    ${BotaoOK}
