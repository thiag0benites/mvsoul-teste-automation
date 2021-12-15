##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Consulta de Cirurgias (Agendadas, Realizadas e Canceladas)
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/C_AGENDA_CIRURGIA_PAGE.robot

*** Variable ***

*** Keywords ***
Pesquisar Aviso de Cirurgia |${CdAviso}|
    Preencher Campo                    ${CampoAvisoPesquisa}         ${CdAviso}
    Click Elemento por titulo          Executar Consulta

Validar Consulta por Aviso |${Cirurgia1}| |${Cirurgia2}|
    Validar Elemento Pelo Titulo       ${Cirurgia1}
    Validar Elemento Pelo Titulo       ${Cirurgia2}

Acessar Aba |${Aba}| |${ValidacaoAba}|
    IF    '${Aba}' == 'Paciente'
        Validar Elemento Pelo Titulo       ${ValidacaoAba}
    ELSE IF    '${Aba}' == 'Diagnostico'
        Click no Item                      ${AbaDiagnostico}
        Validar Elemento Pelo Titulo       ${ValidacaoAba}
    ELSE IF    '${Aba}' == 'Confirmacao'
        Click no Item                      ${AbaConfirmacao}
        Validar Elemento Pelo Titulo       ${ValidacaoAba}
    ELSE IF    '${Aba}' == 'Cancelamento'
        Click no Item                      ${AbaCancelamento}
    ELSE IF    '${Aba}' == 'FiltrarCirurgiao'
        Click no Item                      ${AbaFiltrarCirurgiao}
    ELSE IF    '${Aba}' == 'FiltrarPediatria'
        Click no Item                      ${AbaFiltrarPed}
    ELSE IF    '${Aba}' == 'FiltrarUTI'
        Click no Item                      ${AbaFiltrarUTI}
    ELSE IF    '${Aba}' == 'Observacao'
        Click no Item                      ${AbaObservacao} 
    END


