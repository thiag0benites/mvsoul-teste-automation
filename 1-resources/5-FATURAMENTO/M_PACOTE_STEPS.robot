##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: Cobranças e tabelas
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/5-FATURAMENTO/M_PACOTE_PAGE.robot

*** Variable ***

*** Keywords ***
Clicar no botao Pesquisar
    Click no Item               ${btnPesquisar} 

Clicar na aba Excecoes
    Click no Item                   ${abaExcecoes}

Usuario devera preencher os campos|${grupoProced}|,|${procedimento}|,|${setor}|,|${acomodacao}|
    Preencher campo                  ${grupoProcedInput}                     ${grupoProced}
    Sleep                            2

    Wait Until Element is Visible    ${procedimentoTable}                       60
    Click no Item                    ${procedimentoTable}
    Sleep                            2
    Preencher campo                  ${procedimentoInput}                    ${procedimento}
    Sleep                            2

    Wait Until Element is Visible    ${campoSetor}                                   60
    Click no Item                    ${campoSetor}
    Sleep                            2
    Preencher campo                  ${setorInput}                           ${setor}
    Sleep                            2

    Click no Item                    ${campoAcomodacao}
    Sleep                            2
    Preencher campo                  ${acomodacaoInput}                      ${acomodacao}
    Sleep                            2

Validar cadastro realizado |${mensagem}|
    Valida Mensagem  ${notification}    ${mensagem}
    
Clicar no botao Salvar
    Click no Item               ${btnSalvar} 

Clicar no botao Executar 
    Click no Item            ${btnExecute} 
    Sleep              30   