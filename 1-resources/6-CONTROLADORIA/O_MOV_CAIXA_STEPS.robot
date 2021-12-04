##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/6-CONTROLADORIA/O_MOV_CAIXA_PAGE.robot

*** Keywords ***
Informar o caixa que sera vizualizado operado
    Click no Item    ${BtnCaixa}
    Click no Item    ${DescricaoCaixa}
    Click no Item    ${BtnOk}

Clicar em Executar Pesquisa
    Click Elemento por titulo    Executar Consulta

Abrir a Aba DOCUMENTOS
    Click no Item    ${MenuDocumentos}

Selecionar por meio do check box Doc Caixa o s documento s que sera ao Depositado s
    Click no Item    ${BtnCheck}

Selecionar no campo Conta Corrente a conta corrente que recebera o deposito
    Click no Item    ${BtnContaCorrente}
    Click no Item    ${DescricaoBanco}
    Click no Item    ${BtnOk}

<<<<<<< HEAD
Clicar no botao Efetuar Deposito |${MsgLida}|
    Click no Item                    ${BtnDeposito} 
    Valida Mensagem                  ${MsgValidacao}                    ${MsgLida}
=======
Clicar no botao Efetuar Deposito
    Click no Item    ${BtnDeposito}
    Valida Mensagem    ${MsgValidacao}    Depósito efetuado
>>>>>>> ac99832d014ca603a3daedbb5861a69f65e3aa6d

Clicar no botao Limpar Deposito
    Click Elemento por titulo    Limpar
#########################################################################################################################

Informar o caixa que sera vizualizado operado 2
    Click no Item    ${BtnCaixa}
    Click no Item    ${DescricaoCaixa}
    Click no Item    ${BtnOk}

Clicar em Executar Pesquisa 2
    Click Elemento por titulo    Executar Consulta

Abrir a Aba APLICACAO DIRETA
    Click no Item    ${MenuAplicacaoDireta}

Selecionar no campo Lancamento o tipo de pagamento a efetuar
    Click no Item    ${BtnLancamento}
    Click no Item    ${DescricaoConta}
    Click no Item    ${BtnOk}

<<<<<<< HEAD
Informar o valor no campo valor |${Valor2}|
    Preencher campo                    ${Valor}                    ${Valor2}
    Click no Item                      ${Data}   
=======
#Informar o valor no campo valor
    Preencher campo    ${Valor}    1
    Click no Item    ${Data}
>>>>>>> ac99832d014ca603a3daedbb5861a69f65e3aa6d

Selecionar no campo setor o setor para o qual sera alocado esta despesa
    Click no Item    ${BtnSetor}
    Click no Item    ${SetorFiltro}
    Click no Item    ${BtnOk}

Selecionar no campo Motivo de lancamento
    Click no Item    ${BtnMotivo}
    Click no Item    ${FiltroMotivo}
    Click no Item    ${BtnOk}

<<<<<<< HEAD
Clicar no botao Efetuar Pagamento |${MsgLida}|
    Click no Item                         ${BtnEfetuarPgto}  
    Click no Item                         ${BtnSim}   
    Valida Mensagem                       ${MsgMostrada}             ${MsgLida}
    Click no Item                         ${BtnOk2}  
=======
#Clicar no botao Efetuar Pagamento
    Click no Item    ${BtnEfetuarPgto}
    Click no Item    ${BtnSim}
    Valida Mensagem    ${MsgMostrada}    Pagamento efetuado com sucesso
    Click no Item    ${BtnOk2}
>>>>>>> ac99832d014ca603a3daedbb5861a69f65e3aa6d

Clicar no botao Limpar Pagamento
    Click no Item    ${BtnLimpar}
