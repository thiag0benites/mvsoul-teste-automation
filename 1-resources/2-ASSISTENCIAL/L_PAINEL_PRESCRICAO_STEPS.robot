##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Alteração de Atendimento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/L_PAINEL_PRESCRICAO_PAGE.robot
Resource    ../6-CONTROLADORIA/M_CAUCAO_STEPS.robot

*** Variable ***

*** Keywords ***
Realizar Pesquisa por |${Parametro}| |${Setor}| |${Processo}| |${AtendimentoPesquisa}| |${Atendimento}| |${Paciente}| |${DataHora}| |${MensagemEsperada}|
    IF    '${Parametro}' == 'Setor'
        Preencher Campo    ${CampoSetor}    ${Setor}
        Click no Item    ${BotaoPesquisar}
        Validar Resultado da Pesquisa |${Atendimento}| |${Paciente}| |${DataHora}|
    ELSE IF    '${Parametro}' == 'Processo'
        Click no Item    ${BotaoLimpar} 
        Preencher Campo    ${CampoProcesso}    ${Processo}
        Send Keys    tab
        Click no Item    ${BotaoPesquisar}
        Valida Mensagem    ${MensagemToast}    ${MensagemEsperada}
    ELSE IF    '${Parametro}' == 'Atendimento'
        Click no Item    ${BotaoLimpar} 
        Preencher Campo    ${CampoAtendimento}    ${AtendimentoPesquisa}
        Click no Item    ${BotaoPesquisar}
        Validar Resultado da Pesquisa |${Atendimento}| |${Paciente}| |${DataHora}|
    END

Validar Resultado da Pesquisa |${Atendimento}| |${Paciente}| |${DataHora}|
    Validar Elemento Pelo Titulo    ${Atendimento}
    Validar Elemento Pelo Titulo    ${Paciente}
    Validar Elemento Pelo Titulo    ${DataHora}
    



