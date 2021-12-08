##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Consulta de  Solicitações de Produtos ao Estoque
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/C_SOLSAI_PRO_PAGE.robot

*** Variable ***

*** Keywords ***
Cancelar Consulta |${MsgConsultaCancelada}|
    Click Elemento por titulo                    Cancelar
    Valida Mensagem                              ${MensagemToast}            ${MsgConsultaCancelada}

Tela Modo de Pesquisa |${MsgBusca}|
    Click Elemento por titulo                    Procurar
    Valida Mensagem                              ${MensagemToast}            ${MsgBusca}

Selecionar Destino e Estoque
    [Arguments]                                  ${RbDestino}                ${EstoqueSolic}
    Click no Item                                ${RbDestino}
    Selecionar Item Na Lista                     ${BotaoLovEstoqueSol}       ${EstoqueSolic}            ${EstoqueSolic}

Realizar Consulta de Solicitacoes por |${Destino}| |${MsgBusca}| |${Estoque}| |${Produto}|
    Tela Modo de Pesquisa |${MsgBusca}|
    IF          "${Destino}" == "PacienteSol"
        Selecionar Destino e Estoque              ${RbPacienteSol}             ${Estoque}
        Click Elemento por titulo                     Executar Consulta
        Validar Preenchimentos dos Campos Apos Consulta    ${Produto}
    ELSE IF     "${Destino}" == "SetorSol"
        Selecionar Destino e Estoque              ${RbSetorSol}                ${Estoque}
        Click Elemento por titulo                     Executar Consulta
        Validar Preenchimentos dos Campos Apos Consulta    ${Produto}
    ELSE IF     "${Destino}" == "Estoque"
        Selecionar Destino e Estoque              ${RbEstoque}                 ${Estoque}
        Click Elemento por titulo                     Executar Consulta
        Validar Preenchimentos dos Campos Apos Consulta    ${Produto}
    ELSE IF     "${Destino}" == "Empresa"
        Selecionar Destino e Estoque              ${RbEmpresa}                 ${Estoque}
        Click Elemento por titulo                     Executar Consulta
        Validar Preenchimentos dos Campos Apos Consulta    ${Produto}
    ELSE IF     "${Destino}" == "PacienteDev"
        Selecionar Destino e Estoque              ${RbPacienteDev}             ${Estoque}
        Click Elemento por titulo                     Executar Consulta
        Validar Preenchimentos dos Campos Apos Consulta    ${Produto}
    ELSE IF     "${Destino}" == "SetorDev"
        Selecionar Destino e Estoque              ${RbSetorDev}                ${Estoque}
        Click Elemento por titulo                     Executar Consulta
        Validar Preenchimentos dos Campos Apos Consulta    ${Produto}
    END
    

Validar Preenchimentos dos Campos Apos Consulta 
    [Arguments]             ${Produto}
    Validar Elemento Pelo Titulo                  ${Produto}

Imprimir Relatorio
    Click no Item                                 ${BotaoImprimeSolicitacao} 
    Click no Item                                 ${BotaoImprimir} 
    Sleep  2
    Switch Window                                 NEW
    Sleep  3
    Capture Page Screenshot