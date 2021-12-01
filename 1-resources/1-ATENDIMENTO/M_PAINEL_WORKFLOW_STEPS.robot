##################################################################################################################################
# Autor: José Neto
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource                            ../../2-pages/1-ATENDIMENTO/M_PAINEL_WORKFLOW_PAGE.robot

*** Keywords ***
Clicar no Botao <Pre/Agend> e Marcar o Check Button "Dt Prevista"
    Click no Item                           ${BtnPreAg}
    Click no Item                           ${BtnDtPrevista}
Clicar no Botao <Revisao> e Marcar o Check Button "Dt Prevista"
    Click no Item                           ${BtnRevisao}
    Click no Item                           ${BtnDtPrevista}
Clicar no Botao <Cotacao> e Marcar o Check Button "Dt Prevista"
    Click no Item                           ${BtnCotacao}
    Click no Item                           ${BtnDtPrevista}
Clicar no Botao <Aguard Cotacao> e Marcar o Check Button "Dt Prevista"
    Click no Item                           ${BtnAguardCotacao}
    Click no Item                           ${BtnDtPrevista}
Clicar no Botao <Solic Guia> e Marcar o Check Button "Dt Prevista"
    Click no Item                           ${BtnSolicGuia}
    Click no Item                           ${BtnDtPrevista}
Clicar no Botao <Aguard Guia> e Marcar o Check Button "Dt Prevista"
    Click no Item                           ${BtnAguardGuia}
    Click no Item                           ${BtnDtPrevista}
Clicar no Botao <Confirmacao> e Marcar o Check Button "Dt Prevista"
    Click no Item                           ${BtnConfirmacao}
    Click no Item                           ${BtnDtPrevista}
Clicar no Botao <Aguard Realizacao> e Marcar o Check Button "Dt Prevista"
    Click no Item                           ${BtnAguardRealizacao}
    Click no Item                           ${BtnDtPrevista}
Clicar no Botao <Todos> e Marcar o Check Button "Dt Prevista"
    Click no Item                           ${BtnTodos}
    Click no Item                           ${BtnDtPrevista}