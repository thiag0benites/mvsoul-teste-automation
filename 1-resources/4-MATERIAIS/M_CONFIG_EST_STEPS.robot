##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Produtos do Estoque
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_CONFIG_EST_PAGE.robot

*** Variable ***

*** Keywords ***
Alterar Parametro de Situacao do Usuario |${Parametro1}| |${Parametro2}|
    Wait Until Element Is Visible    ${CampoSitUsuario}    40
    ${PegaValor}    Get Element Attribute    ${CampoSitUsuario}    title
    IF    '${PegaValor}' == 'Não'
        Preencher Campo    ${CampoSitUsuario}    ${Parametro1}
    ELSE IF    '${PegaValor}' == 'Sim'
        Preencher Campo    ${CampoSitUsuario}    ${Parametro2}
    END

Acessar Opcao de Configuracao |${Opcao}| |${Parametro1}| |${Parametro2}|
    IF    '${Opcao}' == 'Configuração de Kit'
        Preencher Campo    ${ListaParametro}    ${Opcao}
        Send Keys    tab
        Wait Until Element Is Visible    ${CampoCadProdMestre}    40
        ${PegaValor}    Get Element Attribute    ${CampoCadProdMestre}    title
        IF    '${PegaValor}' == 'Não'
            Preencher Campo    ${CampoCadProdMestre}    ${Parametro1}
        END

    ELSE IF    '${Opcao}' == 'Parâmetros de Movimentação de Produtos'
        Preencher Campo    ${ListaParametro}    ${Opcao}
        Send Keys    tab
        Wait Until Element Is Visible    ${CampoBloqSolicAvulsa}    40
        ${PegaValor}    Get Element Attribute    ${CampoBloqSolicAvulsa}    title
        IF    '${PegaValor}' == 'Sim'
            Preencher Campo    ${CampoBloqSolicAvulsa}    ${Parametro2}
        END
    END

Salvar Alteracoes Realizadas |${MensagemSucesso}|
    Click Elemento por titulo    Salvar
    ContextoSteps.Valida Mensagem    ${MensagemToast2}    ${MensagemSucesso}
    Click no Item    ${BotaoOK}

