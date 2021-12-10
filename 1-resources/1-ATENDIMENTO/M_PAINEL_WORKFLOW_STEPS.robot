##################################################################################################################################
# Autor: José Neto
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource                            ../../2-pages/1-ATENDIMENTO/M_PAINEL_WORKFLOW_PAGE.robot

*** Keywords ***
Click no Botao |${Botao1}| e Marcar o Check Button BtnDtPrevista
    IF          '${Botao1}' == 'Pre/Agend'
        Click no Item                           ${BtnPreAg}
    ELSE IF     '${Botao1}' == 'Revisao'
        Click no Item                           ${BtnRevisao}
    ELSE IF     '${Botao1}' == 'Cotacao'
        Click no Item                           ${BtnRevisao}
    ELSE IF     '${Botao1}' == 'Aguard Cotacao'
        Click no Item                           ${BtnCotacao}
    ELSE IF     '${Botao1}' == 'Aguard Guia'
        Click no Item                           ${BtnAguardCotacao}
    ELSE IF     '${Botao1}' == 'Solic Guia'
        Click no Item                           ${BtnSolicGuia}
    ELSE IF     '${Botao1}' == 'Confirmacao'
        Click no Item                           ${BtnConfirmacao}
    ELSE IF     '${Botao1}' == 'Aguard Realizacao'
        Click no Item                           ${BtnAguardRealizacao}
    ELSE IF     '${Botao1}' == 'Todos'
        Click no Item                           ${BtnTodos}
    END
    Element Should Be Visible                   ${BtnDtPrevista}             