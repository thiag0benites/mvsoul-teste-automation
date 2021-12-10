##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: M_USUARIOUNID
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/7-APOIO_TI/M_USUARIOUNID_PAGE.robot

*** Variable ***

*** Keywords ***

Selecionar Cod Usuario |${codUsuario}|,|${validaCodUsuario}|
    Preencher Campo                             ${CampoEditavel}                    ${codUsuario}
    Send Keys                                   Enter
    Validar Elemento Pelo Titulo                ${validaCodUsuario}

Selecionar Cod Unidade de Internacao |${codUnidInternacao}|,|${validaCodInternacao}|
    Preencher Campo                             ${CampoEditavel}                    ${codUnidInternacao}
    Send Keys                                   Enter
    Validar Elemento Pelo Titulo                ${validaCodInternacao}

Validar cadastro realizado |${mensagem}|
    Sleep       30
    Valida Mensagem                  ${MensagemToast}                ${mensagem}

