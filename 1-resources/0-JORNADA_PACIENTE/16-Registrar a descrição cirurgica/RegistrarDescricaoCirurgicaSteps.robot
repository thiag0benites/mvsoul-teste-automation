##################################################################################################################################
# Autor: Gabriel Passos
# Decrição: Testes da tela Registrar a descricao cirurgica
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../../2-pages/0-JORNADA_PACIENTE/RegistrarDescricaoCirurgicaPage.robot

*** Variable ***

*** Keywords ***
Informar o codigo do aviso de cirurgia |${codAvCirurgia}|
    Wait Until Element Is Visible    ${inputAvisoCirurgia}    120
    Preencher campo    ${inputAvisoCirurgia}    ${codAvCirurgia}
    Sleep    1
    Clicar no botao [Executar]
    Sleep    2
Descrever os campos para detalhamento da descricao cirurgica |${meuTexto}|
    Click Button    ${btnNovadescricao}
    
    Wait Until Element Is Visible    ${btnMeusTextos}    30
    Click Button    ${btnMeusTextos}
    Click Elemento por titulo    ${meuTexto}
    Clicar no botao [OK]
    Sleep    1
    Clicar no botao [Salvar]
    Sleep    1
    Click Button    ${btnRetornarDescr}
    Sleep    1

    Click Button    ${btnRiscos}

    Wait Until Element Is Visible    ${btnMeusTextos}    30
    Click Button    ${btnMeusTextos}
    Click Elemento por titulo    ${meuTexto}
    Clicar no botao [OK]
    Sleep    1
    Clicar no botao [Salvar]
    Sleep    1
    Click Button    ${btnRetornarDescr}
    Sleep    1

    Click Button    ${btnIntercorrencias}
    
    Wait Until Element Is Visible    ${btnMeusTextos}    30
    Click Button    ${btnMeusTextos}
    Click Elemento por titulo    ${meuTexto}
    Clicar no botao [OK]
    Sleep    1
    Clicar no botao [Salvar]
    Sleep    1
    Click Button    ${btnRetornarDescr}
    Sleep    1

    Click Button    ${btnOrteseProtese}
    
    Wait Until Element Is Visible    ${btnMeusTextos}    30
    Click Button    ${btnMeusTextos}
    Click Elemento por titulo    ${meuTexto}
    Clicar no botao [OK]
    Sleep    1
    Clicar no botao [Salvar]
    Sleep    1
    Click Button    ${btnRetornarDescr}
    Sleep    1

    Click Button    ${btnAtoAnestesico}

    Wait Until Element Is Visible    ${btnMeusTextos}    30
    Click Button    ${btnMeusTextos}
    Click Elemento por titulo    ${meuTexto}
    Clicar no botao [OK]
    Sleep    1
    Clicar no botao [Salvar]
    Sleep    1
    Click Button    ${btnRetornarDescr}
    Sleep    1

    Click Button    ${btnAchadosCirurgicos}

    Wait Until Element Is Visible    ${txtDescrComplementar}    30
    Clicar no botao [Reticencias]
    Input Text    ${txtDescrComplementar}    ${meuTexto}
    Clicar no botao [OK]
    Sleep    1
    Click Button    ${btnSalvarDescr}
    Sleep    1
    Click Button    ${btnRetornarComplem}
    Sleep    3
    
Concluir a descricao e liberar o aviso de cirurgia para confirmacao |${msgDescricaoCir}|
    Wait Until Element Is Visible    ${btnConcluirDescr}
    Click Button    ${btnConcluirDescr}
    Sleep    1
    Click Button    ${btnLiberaAviso}
    Sleep    1
    Valida notificacao pop-up com botao|${msgDescricaoCir}|[Sim]




