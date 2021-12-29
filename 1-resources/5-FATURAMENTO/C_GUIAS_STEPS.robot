##################################################################################################################################
# Autor: Marcos Costa
# Decrição: Fluxo Principal da Tela de Central de Guias (Autorizações)
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/5-FATURAMENTO/C_GUIAS_PAGE.robot

*** Keywords ***
# Informar no Campo <Tabela> |${VlTabFat}| <Procedimento> |${VlProFat}| <Laboratorio> |${VlLab}| <Medicamento> |${VlMed}|
#     Validar Acesso a Tela |Configuração do Brasíndice|
#     Click no Item    ${BtTabA}
#     Click no Item    ${BtTabB}
#     Clicar no Campo e Preencher Informacao    ${BtTabC}    ${BtTabC}    ${VlTabFat}
#     Click no Item    ${BtTabD}
#     Click no Item    ${BtTabE}
# # Informar no Campo <Procedimento>
#     Click no Item    ${ProFatA}
#     Click no Item    ${ProFatB}
#     Clicar no Campo e Preencher Informacao    ${ProFatC}    ${ProFatC}    ${VlProFat}
#     Click no Item    ${ProFatD}
#     Click no Item    ${ProFatE}
# # Informar no Campo <Laboratorio>
#     Click no Item    ${BtLabA}
#     Click no Item    ${BtLabB}
#     Clicar no Campo e Preencher Informacao    ${BtLabC}    ${BtLabC}    ${VlLab}
#     Click no Item    ${BtLabD}
#     Click no Item    ${BtLabE}
# # Informar no Campo <Medicamento>
#     Click no Item    ${BtMedA}
#     Click no Item    ${BtMedB}
#     Clicar no Campo e Preencher Informacao    ${BtMedC}    ${BtMedC}    ${VlMed}
#     Click no Item    ${BtMedD}
#     Click no Item    ${BtMedE}
# # Informar no Campo <Apresentacao>
#     Click no Item    ${BtApreA}
#     Click no Item    ${BtApreB}
#     Clicar no Campo e Preencher Informacao    ${BtApreC}    ${BtApreC}    ${VlApre}
#     Click no Item    ${BtApreD}
#     Click no Item    ${BtApreE}
# # Informar no Campo <Qtd de Apres>
#     Clicar no Campo e Preencher Informacao    ${CpQtdade}    ${CpGeneric}    ${VlQtd}
# # Informar no Campo <Codigo TISS'>
#     Clicar no Campo e Preencher Informacao    ${CpTiss}    ${CpGeneric}    ${VlTiss}
# # Informar no Campo <Codigo TUSS>
#     Clicar no Campo e Preencher Informacao    ${CpTuss}    ${CpGeneric}    ${VlTuss}

# Clicar no Botao <Salvar> |${MsgEsperada}|
#     Click no Item    ${BtSalvar}
#     Sleep    2
#     Valida Mensagem    ${MgsVerif}    ${MsgEsperada}
