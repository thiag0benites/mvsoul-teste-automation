##################################################################################################################################
# Autor: Marcos Costa
# Descrição: Realizar a Exportação Aba Remessa BPA
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                    ../../2-pages/5-FATURAMENTO/M_GERA_BPA_PAGE.robot

*** Keywords ***

Informa na Tela Exportacao Producao BPA <Competencia> |${VlCompet}| <Remessa> |${VlReme}| <Tp Consi> |${VlConsis}| Msg1 |${MgsVerif}| Msg2 |${MgsVerif}|
    Validar Acesso a Tela |Exportação da Produção BPA|
    Click no Item    ${BtCompA}  
    Click no Item    ${BtCompB} 
    Clicar no Campo e Preencher Informacao    ${BtCompC}    ${BtCompC}    ${VlCompet}
    Click no Item    ${BtCompD}
    Click no Item    ${BtCompE}
    # Remessa
    Click no Item    ${BtRemeA}  
    Click no Item    ${BtRemeB} 
    Clicar no Campo e Preencher Informacao    ${BtRemeC}    ${BtRemeC}    ${VlReme}
    Click no Item    ${BtRemeD}
    Click no Item    ${BtRemeE}
    # Tipo de Consistencia
    Click no Item    ${BtConsisA}
    Clicar no Campo e Preencher Informacao    ${BtConsisB}    ${BtConsisB}    ${VlConsis}
    #Consistir
    Click no Item    ${BtConsist}
    Sleep    2
    Valida Mensagem    ${MgsVerif}    ${MsgEsperada}
    # Fechar
    Click no Item    ${BtFechar}
    Sleep    2
    Valida Mensagem    ${MgsVerif}    ${MsgEsperada}
