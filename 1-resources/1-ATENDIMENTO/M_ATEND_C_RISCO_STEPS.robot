##################################################################################################################################
# Autor: José Neto
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource                            ../../2-pages/1-ATENDIMENTO/M_ATEND_C_RISCO_PAGE.robot

*** Keywords ***
Alterar Data de Pre-Atendimento |${DtPreAtend}|
    Clicar no Campo e Preencher Informacao                    ${campoDtPreAtend}    ${campoDtPreAtend}    ${DtPreAtend}
    Send Keys                                                 enter
Pesquisar Atraves do Tipo de Senha Que Esta Sendo Chamado
    Clicar Botao se estiver Visivel                          ${btnSenhaAtend}
    Clicar Botao se estiver Visivel                          ${btnExecConsulta}
