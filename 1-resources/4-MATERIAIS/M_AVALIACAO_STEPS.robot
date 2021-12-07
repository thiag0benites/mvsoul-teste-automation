##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_AVALIACAO_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher os campos da tela de avaliacao |${fornecedor}|,|${questionario}|
    Preencher campo                  ${campoFornecedor}           ${fornecedor} 
    Sleep                            2

    Preencher campo                  ${campoQuestionario}         ${questionario} 
    Sleep                            2

Preencher o campo resposta da tabela |${resposta}|
    Click no Item                    ${campoResposta}
    Sleep                            1
    Preencher campo                  ${campoRespostaInput}                  ${resposta} 

    Click no Item                    ${campoSegundaResposta}
    Sleep                            1
    Preencher campo                  ${campoSegundaRespostaInput}           ${resposta} 


Clicar no botao Salvar da tela
    Click no Item  ${btnSalvar}

Validar cadastro da avaliacao do fornecedor |${mensagem}|
    Valida Mensagem                  ${MensagemToast}                ${mensagem}
