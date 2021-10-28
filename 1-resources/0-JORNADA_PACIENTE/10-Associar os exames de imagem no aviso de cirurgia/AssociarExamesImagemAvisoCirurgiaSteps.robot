##################################################################################################################################
# Autor: Thiago Benites
# Decrição: 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../../2-pages/0-JORNADA_PACIENTE/AssociarExamesImagemAvisoCirurgiaPage.robot

*** Variable ***

*** Keywords ***
Selecionar um exame de imagem e o setor na lista de valores
Informar a quantidade para o exame

Clicar no botao |${textoBtn}|
    Convert To Lower Case    ${textoBtn}
    ${btnElemento}    Replace String    ${btn}    <elemento>    ${textoBtn}
    Click Element    ${btnElemento}    error=Não foi possível efetuar o click no botão ${textoBtn}