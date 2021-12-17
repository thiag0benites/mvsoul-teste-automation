##################################################################################################################################
# Autor: Marcos Costa
# Descrição: O Caso de Teste tem como Objetivo Configurar Lista de Paciente do Tipo Internação.
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                    ../../2-pages/2-ASSISTENCIAL/M_CONFIG_LISTA_PACIENTE_PAGE.robot

*** Keywords ***

# Informa na Tela Protocolo <Desc> |${VlDesc}| <Dias> |${VlDias}| <Ciclo> |${VlCiclo}| <Dt Inicio> |${VlDtIni}| <Dt Valid> |${VlDtVal}| <Ativo> |${VlAtivo}| <IdadeInicial> |${VlIdadeA}| <IdadeFinal> |${VlIdadeB}| <Salvar> |${MsgEsperada}| <DocPadrao> |${VlDoc}| <QtDias> |${VlQtDias}|
#     Validar Acesso a Tela |Protocolo|
    
#     Click no Item    ${BtSalvar}
#     sleep    2
#     Valida Mensagem    ${MgsVerif}    ${MsgEsperada}

