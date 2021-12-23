##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Objetos de Prontuário
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_PAGU_OBJETO_PAGE.robot

*** Variable ***

*** Keywords ***

Localizar Objeto Pai
    Wait Until Element Is Visible    ${ObjetoPaiAferic}     250
    Click no Item                    ${ObjetoPaiAferic}

Abrir Edicao e Adicionar Campo
    Click no Item                    ${BotaoEdicao}
    Sleep    1
    Click no Item                    ${BotaoCid}
    Sleep    1

Validar Edicao e Salvar |${Resultado}|
    Validar Elemento Pelo Titulo    ${Resultado}
    Click no Item                   ${BotaoSalvar}

Sair e Voltar pra Validar |${Resultado}|
    Click no Item                    ${BotaoEdicao}
    Validar Elemento Pelo Titulo    ${Resultado}
    

