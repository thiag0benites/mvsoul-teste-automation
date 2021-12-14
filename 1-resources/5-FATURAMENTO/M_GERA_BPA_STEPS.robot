##################################################################################################################################
# Autor: Marcos Costa
# Descrição: Realizar a Exportação Aba Remessa BPA
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                    ../../2-pages/5-FATURAMENTO/M_GERA_BPA_PAGE.robot

*** Keywords ***

Validar Checkbox de Solicitacao Marcado 
    Validar Acesso a Tela |Configurações da Nota Fiscal|
   
Clicar Salvar |${MsgEsperada}|
    Click no Item    ${BtSalvar}
    sleep    2
    Valida Mensagem    ${MgsVerif}    ${MsgEsperada}