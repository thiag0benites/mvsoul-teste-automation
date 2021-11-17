##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: M_USUARIOUNID
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/7-APOIO_TI/M_USUARIOUNID_PAGE.robot

*** Variable ***

*** Keywords ***

Selecionar Cod Usuario
    Preencher Campo                             ${CampoEditavel}                    GPINA
    Send Keys                                   Enter
    Validar Elemento Pelo Titulo                GEISHA ABREU SOARES DE PINA

Selecionar Cod Unidade de Internacao
    Preencher Campo                             ${CampoEditavel}                    174
    Send Keys                                   Enter
    Validar Elemento Pelo Titulo                AADBR UNIDADE INTERNAÇÃO

Validar cadastro realizado
    Sleep       30
    Valida Mensagem                  ${MensagemToast}                Registros gravados com sucesso (1 registros gravados).

