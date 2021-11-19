##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Passo a passo do Manutenção de Guias (Std) 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../2-pages/2-ASSISTENCIAL/M_ADMISSAO_CO_PAGE.robot
### Metodos Genericos


*** Variable ***

*** Keywords ***
Acessar Atendimento |${Item}|
    Click no Item                    ${BtnSetaAtendimento}
    # Wait Until Element Is Visible    ${BtnFiltrar}                  10
    # Preencher campo       ${CampoFiltroAtend}             %${Item}
    Click no Item                    ${BtnFiltrar}
    # Wait Until Element Is Visible    ${SelecionaAtendimento}         30
    Sleep    5
    Click Element                    ${SelecionaAtendimento}
    Click Button                     ${BtnOk}

Acessar Tipo Parto |${Item}|
    Click no Item                    ${CampoTipoParto}
    Click no Item                    ${BtnTipoParto}
    Click no Item                    ${CampoFIltoParto}
    Preencher campo                  ${CampoFIltoParto}              %${Item}
    Click no Item                    ${BtnFiltrar}
    Click no Item                    ${BtnOk}

Acessar Motivo do Parto |${Item}|
    Click no Item                    ${CampoMotivoParto}
    Click no Item                    ${BtnMotivoParto}
    Click no Item                    ${CampoFIltoParto}
    Preencher campo                  ${CampoFIltoParto}              %${Item}
    Click no Item                    ${BtnFiltrar}
    Click no Item                    ${BtnOk}

Preenche Dados Quantidade Filhos |${Item1}| e Semanas |${Item2}|
    Click no Item                    ${CampoQtdFilhos}
    Sleep    5
    Preencher campo                  ${CampoQtdFilhos}               ${Item1}
    Click no Item                    ${CampoQtdSemanas}
    Sleep    5
    Preencher campo                  ${CampoQtdSemanas}              ${Item2}
    
 Acessar Motivo do Parto |${Item}|
    Click no Item                    ${CampoMotivoParto}
    Click no Item                    ${BtnMotivoParto}
    Click no Item                    ${CampoFIltoParto}
    Preencher campo                  ${CampoFIltoParto}              %${Item}
    Click no Item                    ${BtnFiltrar}
    Click no Item                    ${BtnOk}

Acessar Tipo de Anestesia |${Item}|
    Click no Item                    ${CampoTipoAnestesia}
    Click no Item                    ${BtnTipoAnest}
    Click no Item                    ${CampoFIltoParto}
    Preencher campo                  ${CampoFIltoParto}              %${Item}
    Click no Item                    ${BtnFiltrar}
    Click no Item                    ${BtnOk}

Acessar Botao Obstestricia
    Click no Item                    ${BtnObstetricia}
    Click no Item                    ${CheckBoxPartoNormal}
    Click no Item                    ${BtnSair}

Acesso Tela Recem Nascido
    Click no Item                    ${BtnRecemNascido}
    Validar Item                     ${MensagemValidacao}
    Click no Item                    ${CampoDataHoraRN}
    Preencher campo                  ${CampoDataHoraRN}                171120212035
    Clicar no Campo e Preencher Informacao    ${CampoTipoSexo}    ${CampoTipoSexo}    M
    Send Keys                                                          enter
    Click no Item                    ${CampoNroPulseira}
    Preencher campo                  ${CampoNroPulseira}               030303

Preenche Registro Civil
    Click no Item                    ${BtnRegistroCivil}
    Sleep    5
    Click no Item                    ${DeclNascidoVivo}
    Sleep    3
    Preencher campo                  ${DeclNascidoVivo}                30302020
    Click no Item                    ${BtnOk}
    Click no Item                    ${CampoNroPulseira}
    Sleep    5
    Preencher campo                  ${CampoNroPulseira}               030303

Preenche Apgar, Perimetro e Medidas
    Click no Item                    ${Apgar1Min}
    Preencher campo                  ${Apgar1Min}                       6
    Click no Item                    ${Apgar5Min}
    Preencher campo                  ${Apgar5Min}                       9
    Click no Item                    ${PerimetroCefalico}
    Preencher campo                  ${PerimetroCefalico}               32,0
    Click no Item                    ${PerimetroToracico}
    Preencher campo                  ${PerimetroToracico}               32,0
    Click no Item                    ${PerimetroAbdominal}
    Preencher campo                  ${PerimetroAbdominal}              35,0
    Click no Item                    ${MedidaAltura} 
    Preencher campo                  ${MedidaAltura}                    49,0
    Click no Item                    ${MedidaPeso}
    Preencher campo                  ${MedidaPeso}                      3200

Seleciona Pediatra Responsavel e Leito
    Click no Item                    ${CampoPediatraResp}
    Click no Item                    ${BtnPediatraResp}
    Preencher campo                  ${CampoFIltoParto}              AARON
    Click no Item                    ${BtnFiltrar}
    Click no Item                    ${BtnOk}
    Click no Item                    ${CampoLeito}
    Sleep    5
    Click no Item                    ${BtnLeito}
    Preencher campo                  ${CampoFIltoParto}              %Leito
    Click no Item                    ${BtnFiltrar}
    Sleep    3
    Click no Item                    ${BtnOk}
    Click no Item                    ${CampoServicoLeito}
    Click no Item                    ${BtnServico}
    Sleep    3 
    Preencher campo                  ${CampoFIltoParto}              86
    Click no Item                    ${BtnFiltrar}
    Click no Item                    ${BtnOk}
    Click no Item                    ${BtnSalvar}
    Click no Item                    ${BtnOkMensagem}
    Validar Item                     ${MensagemValidacao}               




    
    
    




# Inserir Data de Inicio |${data}|
Inserir Data do Parto |${dd}/${MES}/${aaaa}|
    # Sleep    2
    # ${dd}                          Get Substring        ${data}         0     2
    # ${ddPrimeriaPosicao}           Get Substring        ${dd}           0     1

    # IF    ${ddPrimeriaPosicao} == 0
    # ${dd}                          Get Substring        ${data}         1     2
    # END

    # ${MES}                         Get Substring        ${data}         3     6
    # ${aaaa}                        Get Substring        ${data}         7     12
    Click Element                  ${CampoDataInicial} 
    Sleep                                               5     
    Click Element                  ${BotaoDataInicial}
    Sleep                                               10
    # Click Element                  ${SetaDoCalendario}
    # Sleep                                               2
    ${anoInicio}=                  Get WebElement                       xpath://select[@class='ui-datepicker-year']//option[contains(text(),'${aaaa}')]
    Should Be Equal                ${anoInicio.text}                    ${aaaa}
    Click Element                  ${anoInicio}
    Sleep                                               5
    ${mesInicio}=                  Get WebElement                       xpath://select[@class='ui-datepicker-month']//option[contains(text(),'${MES}')]
    Should Be Equal                ${mesInicio.text}                    ${MES}
    Click Element                  ${mesInicio}
    Sleep                                               5
    ${diaInicio}=                  Get WebElement                       xpath://a[contains(text(),'${dd}')]
    Should Be Equal                ${diaInicio.text}                    ${dd}
    Click Element                  ${diaInicio}
    Sleep                                               5
    # Click Element                  ${CampoDataFinal}
    # Sleep                                               3

# Inserir Data Final |${data}|
# # Inserir Data Final |${dd}/${MES}/${aaaa}|
#     Sleep    2
#     ${dd}                          Get Substring        ${data}         0     2
#     ${ddPrimeriaPosicao}           Get Substring        ${dd}           0     1

#     IF    ${ddPrimeriaPosicao} == 0
#     ${dd}                          Get Substring        ${data}                       1     2
#     END
#     ${MES}                         Get Substring        ${data}         3     6
#     ${aaaa}                        Get Substring        ${data}         7     12
#     Sleep                                               3
#     Click Button                   ${BotaoDataFinal} 
#     Sleep                                               1
#     Click Element                  ${SetaDoCalendario}
#     Sleep                                               1
#     ${anoFinal}=                   Get WebElement                       xpath://td//div[contains(text(),'${aaaa}')]
#     Should Be Equal                ${anoFinal.text}                     ${aaaa}
#     Click Element                  ${anoFinal}
#     Sleep                                               1
#     ${mesFinal}=                   Get WebElement                       xpath://td//div[contains(text(),'${MES}')]
#     Should Be Equal                ${mesFinal.text}                     ${MES}.
#     Click Element                  ${mesFinal}
#     Sleep                                               1
#     ${diaFinal}=                   Get WebElement                       xpath://td//div[contains(text(),'${dd}')]
#     Should Be Equal                ${diaFinal.text}                     ${dd}
#     Click Element                  ${diaFinal}
#     Sleep                                               5