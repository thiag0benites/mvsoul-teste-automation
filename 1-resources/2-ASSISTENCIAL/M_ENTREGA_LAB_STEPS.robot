##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Passos da tela
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_ENTREGA_LAB_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher o campo pedido |${pedido}|
    Preencher campo    ${campoPedido}    ${pedido}

Pesquisar exames
    Click no Item    ${botaoPesquisar}

Marcar checkbox de entrega na tabela
    Click no Item    ${checkboxEntrega}

Gerar protocolo
    Click no Item    ${botaoProtocolo}

Preencher os campos para a geracao do protocolo |${tipoResponsavel}|,|${nomeResponsavel}|,|${dataRegistro}|,|${observacao}|,|${orgaoEmissor}|,|${cpf}|,|${usuarioResponsavel}|
    Preencher campo    ${campoTipoResp}    ${tipoResponsavel}
    Sleep    1
    Preencher campo    ${campoNomeResp}    ${nomeResponsavel}
    Sleep    1
    Preencher campo    ${campoOrgaoEmissor}    ${orgaoEmissor}
    Sleep    1
    Preencher campo    ${campoCPF}    ${cpf}
    Sleep    1
    Click no Item    ${campoUsuarioResp}
    Sleep    1
    Click no Item    ${campoDtEntrega}
    Sleep    1
    Preencher campo    ${campoObservacao}    ${observacao}

Clicar em 6-Confirmar
    Click no Item    ${btnConfirmar}

Verificar se o sistema gerou o protocolo
    Should Not Be Empty    ${campoProtocolo}

Voltar para a tela
    Click no Item    ${btnVoltar}
