##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/1-ATENDIMENTO/CANC_ALTA_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher o campo atendimento |${numAtend}|
    Preencher campo                  ${campoAtendimento}              ${numAtend} 
    
Clicar no botao Cancelar Alta 
    Click no Item                    ${btnCancelar}

Clicar no botao de confirmacao da exclusao
    Click no Item                    ${btnConfirmaExclusao}

Clicar no botao Imprimir do modal
    Click no Item                    ${btnImprimir}

Preencher saida da impressora como Tela |${saida}|
    Preencher campo                  ${campoSaida}              ${saida} 

Validar mensagem de confirmacao da exclusao da alta hospitalar |${mensagem}|
    Valida Mensagem         ${notification}         ${mensagem}

Clicar no botao Sair da impressao 
    Click no Item                    ${buttonSair}
