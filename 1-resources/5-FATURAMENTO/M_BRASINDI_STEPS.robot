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

Informar no Campo 'Tabela' a Tabela Criada para Inserir os dados da Tabela Brasindice - Tabela |${VlTabFat}|
    Validar Acesso a Tela |Configuração do Brasíndice|
    Click no Item    ${BtTabA}
    Click no Item    ${BtTabB}
    Clicar no Campo e Preencher Informacao    ${BtTabC}    ${BtTabC}    ${VlTabFat}
    Click no Item    ${BtTabD}
    Click no Item    ${BtTabE}
Informar no Campo 'Procedimento' o Codigo do Procedimento da Tabela Brasindice - Cod. Procedimento |${VlProFat}|
    Click no Item    ${ProFatA}
    Click no Item    ${ProFatB}
    Clicar no Campo e Preencher Informacao     ${ProFatC}    ${ProFatC}    ${VlProFat}
    Click no Item    ${ProFatD}
    Click no Item    ${ProFatE}  
Informar no Campo 'Laboratorio' o Codigo do Laboratorio Desejado para a Importacao - Laboratorio |${VlLab}|
    Click no Item    ${BtLabA}
    Click no Item    ${BtLabB}
    Clicar no Campo e Preencher Informacao    ${BtLabC}    ${BtLabC}    ${VlLab}
    Click no Item    ${BtLabD}
    Click no Item    ${BtLabE} 
Informar no Campo 'Medicamento' o Codigo do Medicamento - Medicamento |${VlMed}|
    Click no Item    ${BtMedA}
    Click no Item    ${BtMedB}
    Clicar no Campo e Preencher Informacao    ${BtMedC}    ${BtMedC}    ${VlMed}
    Click no Item    ${BtMedD}
    Click no Item    ${BtMedE} 
Informar no Campo 'Apresentacao' o Codigo de Identificacao do Medicamento - Apresentacao |${VlApre}|
    Click no Item    ${BtApreA}
    Click no Item    ${BtApreB}
    Clicar no Campo e Preencher Informacao    ${BtApreC}    ${BtApreC}    ${VlApre}
    Click no Item    ${BtApreD}
    Click no Item    ${BtApreE} 
Informar no Campo 'Qtd de Apres' a Quantidade de Divisao Aplicada ao Preco - Qtd de Apres |${VlQtd}|
    Clicar no Campo e Preencher Informacao    ${CpQtdade}    ${CpGeneric}    ${VlQtd}
Informar no Campo 'Codigo TISS' Numero de Codigo TISS de Relacionado - Cod. Tiss |${VlTiss}|
    Clicar no Campo e Preencher Informacao    ${CpTiss}    ${CpGeneric}    ${VlTiss}
Informar no Campo 'Codigo TUSS' Numero de Codigo TUSS de Relacionado - Cod. Tuss |${VlTuss}|
    Clicar no Campo e Preencher Informacao   ${CpTuss}   ${CpGeneric}    ${VlTuss}   
    Send Keys    tab  
Clicar no Botao 'Salvar' |${MsgEsperada}|
    Click no Item    ${BtSalvar}
    sleep    2
    Valida Mensagem    ${MgsVerif}    ${MsgEsperada}
