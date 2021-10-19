##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Passo a passo do Agendamento cirurgico para a Jornada do Paciente
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../../2-pages/0-JORNADA_PACIENTE/RealizarAgendamentoCirurgicoPage.robot

*** Variable ***

*** Keywords ***
Preencher campos da tela de agendamento |${dados}[centroCirurgico]|,|${dados}[salaCirurgica]|,|${dados}[cirurgia]|,|${dados}[convenio]|,|${dados}[plano]|,|${dados}[prestadorCirurgiao]|,|${dados}[medicoAssociado]|@print
    Wait Until Element Is Visible                       ${inputCentroCirurgico}                                                       10
    Sleep                            1
    SeleniumLibrary.Click Element                    ${inputCentroCirurgico}
    Sleep                            1
    SeleniumLibrary.Input Text                        ${inputCentroCirurgico}                                                        ${centroCirurgico}
    Sleep                            3

    Wait Until Element Is Visible                       ${inputSalaCirurgica}                                                           10
    Sleep                            1
    SeleniumLibrary.Click Element                    ${inputSalaCirurgica}
    Sleep                            1
    SeleniumLibrary.Input Text                        ${inputSalaCirurgica}                                                           ${salaCirurgica}
    Sleep                            3

    Wait Until Element Is Visible                       ${inputCirurgia}                                                                   10
    Sleep                            1
    SeleniumLibrary.Click Element                    ${inputCirurgia}
    Sleep                            1
    SeleniumLibrary.Input Text                        ${inputCirurgia}                                                                   ${cirurgia}
    Sleep                            3

    Wait Until Element Is Visible                       ${inputConvenio}                                                                 10
    Sleep                            1
    SeleniumLibrary.Click Element                    ${inputConvenio}
    Sleep                            1
    SeleniumLibrary.Input Text                        ${inputConvenio}                                                                 ${convenio}
    Sleep                            3

    Wait Until Element Is Visible                       ${inputPlano}                                                                     10
    Sleep                            1
    SeleniumLibrary.Click Element                    ${inputPlano}
    Sleep                            1
    SeleniumLibrary.Input Text                        ${inputPlano}                                                                     ${plano}
    Sleep                            3

    Wait Until Element Is Visible                       ${inputPrestadorCirurgiao}                                                   10
    Sleep                            1
    SeleniumLibrary.Click Element                    ${inputPrestadorCirurgiao}
    Sleep                            1
    SeleniumLibrary.Input Text                        ${inputPrestadorCirurgiao}                                                    ${prestadorCirurgiao}
    Sleep                            3

    Wait Until Element Is Visible                       ${inputMedicoAssociado}                                                      10
    Sleep                            1
    SeleniumLibrary.Click Element                    ${inputMedicoAssociado}
    Sleep                            1
    SeleniumLibrary.Input Text                        ${inputMedicoAssociado}                                                      ${medicoAssociado}
    Sleep                            3
Clicar no botão Agendar
    Wait Until Element Is Visible                  ${btnAgendar}                                50
    Sleep                                      1
    SeleniumLibrary.Click Element               ${btnAgendar}
    Sleep                                      60
Preencher os campos |${dados}[codPaciente]|,|${dados}[tipoAcomodacao]|,|${dados}[undInternacao]|,|${dados}[eqpMedica]|,|${dados}[anestesista]|,|${dados}[numCID]|
    Wait Until Element Is Visible                       ${inputCodPaciente}                                                       10
    Sleep                            1
    SeleniumLibrary.Click Element                    ${inputCodPaciente}
    Sleep                            1
    SeleniumLibrary.Input Text                        ${inputCodPaciente}                                                        ${codPaciente}
    Sleep                            3

    Wait Until Element Is Visible                       ${inputTipoAcomodacao}                                                 10
    Sleep                            1
    SeleniumLibrary.Click Element                    ${inputTipoAcomodacao}
    Sleep                            1
    SeleniumLibrary.Input Text                        ${inputTipoAcomodacao}                                                 ${tipoAcomodacao}
    Sleep                            3

    Wait Until Element Is Visible                       ${inputUnidInternacao}                                                 10
    Sleep                            1
    SeleniumLibrary.Click Element                    ${inputUnidInternacao}
    Sleep                            1
    SeleniumLibrary.Input Text                        ${inputUnidInternacao}                                                 ${codPaciente}
    Sleep                            3

    Wait Until Element Is Visible                       ${inputEqpMedica}                                                       10
    Sleep                            1
    SeleniumLibrary.Click Element                    ${inputEqpMedica}
    Sleep                            1
    SeleniumLibrary.Input Text                        ${inputEqpMedica}                                                        ${codPaciente}
    Sleep                            3

    Wait Until Element Is Visible                       ${inputAnestesista}                                                     10
    Sleep                            1
    SeleniumLibrary.Click Element                    ${inputAnestesista}
    Sleep                            1
    SeleniumLibrary.Input Text                        ${inputAnestesista}                                                     ${codPaciente}
    Sleep                            3

    Wait Until Element Is Visible                       ${inputNumCID}                                                         10
    Sleep                            1
    SeleniumLibrary.Click Element                    ${inputNumCID}
    Sleep                            1
    SeleniumLibrary.Input Text                        ${inputNumCID}                                                         ${codPaciente}
    Sleep                            3
Clicar no botão 8-Confirmar 