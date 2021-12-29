##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../../2-pages/0-JORNADA_PACIENTE/RegistrarDescricaoCirurgicaPage.robot
Resource    ../1-Cadastro de Paciente/CadastroDePacienteSteps.robot
Resource    ../../4-MATERIAIS/M_RECEBE_NOTA_STEPS.robot

*** Variable ***

*** Keywords ***
Informar o codigo do aviso de cirurgia |${codAvCirurgia}|
    Wait Until Element Is Visible    ${inputAvisoCirurgia}    120
    Preencher campo    ${inputAvisoCirurgia}    ${codAvCirurgia}
    Sleep    1
    Clicar no botao [Executar]||
    Sleep    2
Descrever os detalhamentos da descricao cirurgica
    Clicar no botao [Detalhamento]||

    # FOR    ${meusTextos}    IN    ${descricaoCir}
    # Clicar no botao [Meus Textos]||
    # Click Element    ${textoPadrao}
    # Clicar no botao [OK Tela]||
    # Clicar no botao [Salvar Tela]||
    # Clicar no botao [Cancelar]||
    # END


    # FOR    ${itemMenu}    IN    @{listaXpathItensMenu}
    #     ${visivel}    Elemento Visivel    xpath=${itemMenu}
    #     Log To Console    *** Visivel: ${visivel}
    #     ${classe}    Get Element Attribute    xpath=${itemMenu}/ancestor::li[1]    class
    #     Log To Console    *** Visivel: ${classe}
    #     IF    '${classe}' == 'menu-node'
    #         Seleciona item no menu    ${itemMenu}
    #     END
    #     Log To Console    *** Item ${itemMenu} selecionado no menu
    #     Log    *** Item ${itemMenu} selecionado no menu
    # END


    


