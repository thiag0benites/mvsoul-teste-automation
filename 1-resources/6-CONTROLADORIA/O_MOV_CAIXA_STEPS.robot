##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/O_MOV_CAIXA_PAGE.robot
Resource    ../1-ATENDIMENTO/ATE_COMPL_STEPS.robot

*** Keywords ***
Informar o caixa que sera vizualizado operado
    Click no Item                    ${BtnCaixa} 
    Click no Item                    ${DescricaoCaixa} 
    Click no Item                    ${BtnOk}     

Clicar em Executar Pesquisa
    Click Elemento por titulo        Executar Consulta

Abrir a Aba DOCUMENTOS
    Click no Item                    ${MenuDocumentos}  

Selecionar por meio do check box Doc Caixa o s documento s que sera ao Depositado s
    Click no Item                    ${BtnCheck} 

Selecionar no campo Conta Corrente a conta corrente que recebera o deposito
    Click no Item                    ${BtnContaCorrente} 
    Click no Item                    ${DescricaoBanco}
    Click no Item                    ${BtnOk}  

Clicar no botao Efetuar Deposito
    Click no Item                    ${BtnDeposito} 
    Valida Mensagem                  ${MsgValidacao}                    Depósito efetuado

Clicar no botao Limpar Deposito
    Click Elemento por titulo        Limpar