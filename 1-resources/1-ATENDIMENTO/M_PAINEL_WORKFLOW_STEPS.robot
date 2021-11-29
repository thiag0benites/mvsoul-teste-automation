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
    Clicar Botao se estiver Visivel         ${BtnDtPrevista}
Clicar no Botao <Revisao> e Marcar o Check Button "Dt Prevista"
    Click no Item                           ${BtnRevisao}
    Clicar Botao se estiver Visivel         ${BtnDtPrevista}
Clicar no Botao <Cotacao> e Marcar o Check Button "Dt Prevista"
    Click no Item                           ${BtnCotacao}
    Clicar Botao se estiver Visivel         ${BtnDtPrevista}
Clicar no Botao <Aguard Cotacao> e Marcar o Check Button "Dt Prevista"
    Click no Item                           ${BtnAguardCotacao}
    Clicar Botao se estiver Visivel         ${BtnDtPrevista}
Clicar no Botao <Solic Guia> e Marcar o Check Button "Dt Prevista"
    Click no Item                           ${BtnSolicGuia}
    Clicar Botao se estiver Visivel         ${BtnDtPrevista}





#7/8/9/10
