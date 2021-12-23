##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para a Tela De M_CONVERTE_RPS.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../2-pages/5-FATURAMENTO/M_CONVERTE_RPS_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher e validar atendimento |${atendimento}| e clicar no botao recebe
    Preencher campo                 ${campoAtendimento}    ${atendimento}
    Send keys                       enter
    Validar Elemento Pelo Titulo    ${atendimento} 

    Clicar no botao Executar
    Wait Until Element Is Visible    ${btnRecebe}    120
    Click no Item                    ${btnRecebe}

Imprimir nota Fiscal
    Wait Until Element Is Visible    ${btnImprimeNF}    120
    Click no Item                    ${btnImprimeNF}

    Wait Until Element Is Visible    ${btnImprimirNotaFiscal}     120
    Click no Item                    ${btnImprimirNotaFiscal} 

Atualizar e validar mensagem |${mensagemSucesso}|

    Wait Until Element Is Visible    ${btnAtualizar}    120
    Click no Item                    ${btnAtualizar}

    Wait Until Element Is Visible    ${btnSair}    120
    Click no Item                    ${btnSair}
    

    Wait Until Element Is Visible    ${mensagemApresentada}    120
    Element Should Contain           ${mensagemApresentada}    ${mensagemSucesso}
    Sleep                            1




