##################################################################################################################################
# Autor: Marcos Costa
# Decrição: Importar os dados da tabela BRASINDICE para o sistema. 
# A importação corresponde a conversão que incidirá sobre uma determinada tabela para fins de faturamento.
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/5-FATURAMENTO/M_SIMPRO_PAGE.robot

*** Keywords ***

Informar no Campo 'Tabela' a Tabela Criada para Inserir os dados da Tabela Brasindice - Tabela |${VlTabFat}|
    Validar Acesso a Tela |Configuração do Brasíndice|
    Click no Item    ${BtTabA}
    Click no Item    ${BtTabB}
    Clicar no Campo e Preencher Informacao    ${BtTabC}    ${BtTabC}    ${VlTabFat}
    Click no Item    ${BtTabD}
    Click no Item    ${BtTabE}

