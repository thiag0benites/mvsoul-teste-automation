##################################################################################################################################
# Autor: Marcos Costa
# Realizar o relacionamento dos procedimentos de faturamento com a tabela SIMPRO.
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/5-FATURAMENTO/M_SIMPRO_PAGE.robot

*** Keywords ***

Informar no Campo 'Tabela' a Tabela Criada para Inserir os dados da Tabela SIMPRO - Tabela |${VlTabFat}|
    Validar Acesso a Tela |Configuração do SIMPRO|
    Click no Item    ${BtTabA}
    Click no Item    ${BtTabB}
    Clicar no Campo e Preencher Informacao    ${BtTabC}    ${BtTabC}    ${VlTabFat}
    Click no Item    ${BtTabD}
    Click no Item    ${BtTabE}
Informa no Campo 'Procedimento' o Codigo do Procedimento da Tabela SIMPRO - Procedimento |${VlProced}|
    Click no Item    ${ProFatA}
    Click no Item    ${ProFatB}
    Clicar no Campo e Preencher Informacao    ${ProFatC}    ${ProFatC}    ${VlProced}
    Click no Item    ${ProFatD}
    Click no Item    ${ProFatE}
Informa no Campo no campo 'Medicamento' o Codigo do Medicamento SIMPRO - Med |${VlMeD}|
    Click no Item    ${ProMedA}
    Click no Item    ${ProMedB}
    Clicar no Campo e Preencher Informacao    ${ProMedC}    ${ProMedC}    ${VlMeD}
    Click no Item    ${ProMedD}
    Click no Item    ${ProMedE}
Informar no campo 'Fator de Divisao' que sera cobrado para o procedimento - Valor Div |${VlDiv}|
    Clicar no Campo e Preencher Informacao    ${BtFatDivA}    ${BtFatDivB}    ${VlDiv}
Informar no campo 'Tipo do Valor' o tipo que sera cobrado o valor do procedimento - Tp Valor |${VlValor}|
    Clicar no Campo e Preencher Informacao    ${CpTipValorA}    ${CpTipValorB}    ${VlValor}
Informa no Campo no campo 'TUSS' o Codigo do Procedimento - Tuss |${VlrTuss}|
    Clicar no Campo e Preencher Informacao    ${CpTussA}    ${CpTussB}     ${VlrTuss}
Clicar no Botão 'SALVAR' |${MsgEsperada}|
    Click no Item    ${BtSalvar}
    sleep    2
    Valida Mensagem    ${MgsVerif}    ${MsgEsperada}
    