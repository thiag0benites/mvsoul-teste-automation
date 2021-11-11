##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Usuário por Unidade de Internação
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_USUUNID_PAGE.robot
Resource          ../2-pages/ContextoPage.robot

*** Variable ***

*** Keywords ***
Selecionar Usuario
    Preencher Campo                             ${CampoEditavel}                    GPINA
    Send Keys                                   Enter
    Validar Elemento Pelo Titulo                GEISHA ABREU SOARES DE PINA

Selecionar Unidade de Internacao
    Preencher Campo                             ${CampoEditavel}                    174
    Send Keys                                   Enter
    Validar Elemento Pelo Titulo                AADBR UNIDADE INTERNAÇÃO

Validar Checkbox de Solicitacao Marcado
    Marcar Checkbox |${CbProdutoSetor}|
    Marcar Checkbox |${CbProdutoGasto}|
    Marcar Checkbox |${CbProdutoPaciente}|
    Marcar Checkbox |${CbProdutoEstoque}|
    Marcar Checkbox |${CbProdutoEmpresa}|

Validar Checkbox de Movimentacao Desmarcado
    Desmarcar Checkbox |${CbMovSetor}|
    Desmarcar Checkbox |${CbMovGasto}|
    Desmarcar Checkbox |${CbMovPaciente}|
    Desmarcar Checkbox |${CbMovEstoque}|
    Desmarcar Checkbox |${CbMovEmpresa}|

Marcar Checkbox |${CheckboxSol}|
    Wait Until Element Is Visible               ${CheckboxSol}                      20
    ${StatusCheckbox}    Run Keyword And Return Status    Checkbox Should Be Selected    ${CheckboxSol}
    Log To Console    *** ${StatusCheckbox}
    Run Keyword If    ${StatusCheckbox} == True   Click Element    ${CheckboxSol}

Desmarcar Checkbox |${CheckboxMov}|
    Wait Until Element Is Visible               ${CheckboxMov}                      20
    ${StatusCheckbox}    Run Keyword And Return Status    Checkbox Should Be Selected    ${CheckboxMov}
    Log To Console    *** ${StatusCheckbox}
    Run Keyword If    ${StatusCheckbox} == False    Click Element    ${CheckboxMov}

### Keyword para retornar massa de dados ao status inicial do teste ###
Excluir Unidade de Internacao
    Click Elemento por titulo                   Apagar
    Clicar Botao Salvar






