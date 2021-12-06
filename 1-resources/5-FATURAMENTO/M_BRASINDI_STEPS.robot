##################################################################################################################################
# Autor: Marcos Costa
# Decrição: Importar os dados da tabela BRASINDICE para o sistema. 
# A importação corresponde a conversão que incidirá sobre uma determinada tabela para fins de faturamento.
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/5-FATURAMENTO/M_BRASINDI_PAGE.robot

*** Keywords ***

# Informe o Atendimento para o Recebimento Adiantado: Atendimento |${VlAtend}|
#     Validar Acesso a Tela |Manutenção do Depósito de Pagamento Antecipado|
#     Clicar no Campo e Preencher Informacao    ${BtAtend}    ${BtAtend}   ${VlAtend}
#     Click no Item    ${BtExec}
