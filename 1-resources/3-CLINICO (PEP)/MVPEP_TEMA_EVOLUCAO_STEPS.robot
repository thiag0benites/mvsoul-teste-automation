##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Automação de Lista de Parecer Médico
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource         ../../2-pages/3-CLINICO (PEP)/MVPEP_TEMA_EVOLUCAO_PAGE.robot
### Dados do Teste
Library          XML

*** Variable ***

*** Keywords ***

Seleciona Paciente Lista
   Sleep   5
   Wait Until Element Is Visible   ${PacienteLista}
   Click Element   ${PacienteLista}
   Sleep   5

Selecionar o paciente ''@nprint${print}
    Log To Console    *** Elemento da Tabela: ${informacoesPaciente}
    Wait Until Element Is Visible    ${DivLinhasResultadoBusca}    20
    Sleep    10
    ${elementoLinha}    Pega elemento filho por texto    ${DivLinhasResultadoBusca}    ${informacoesPaciente}
    ${textoLinha}    SeleniumLibrary.Get Text    ${elementoLinha}
    Log To Console    *** Texto da linha: ${textoLinha}
    Should Contain    ${textoLinha}    ${informacoesPaciente}
    SeleniumLibrary.Click Element    ${elementoLinha}
    Sleep    3
    # Validar Pesquisa Realizada|${ValidSection}||False|@nprint

Inserir Data de Inicio |${data}|
# Inserir Data de Inicio |${dd}/${MES}/${aaaa}|
    Sleep    2
    ${dd}                          Get Substring        ${data}         0     2
    ${ddPrimeriaPosicao}           Get Substring        ${dd}           0     1

    IF    ${ddPrimeriaPosicao} == 0
    ${dd}                          Get Substring        ${data}         1     2
    END

    ${MES}                         Get Substring        ${data}         3     6
    ${aaaa}                        Get Substring        ${data}         7     12
    Sleep                                               10
    Click Element                  ${BotaoDataInicial}
    Sleep                                               2
    Click Element                  ${SetaDoCalendario}
    Sleep                                               2
    ${anoInicio}=                  Get WebElement                       xpath://td//div[contains(text(),'${aaaa}')]
    Should Be Equal                ${anoInicio.text}                    ${aaaa}
    Click Element                  ${anoInicio}
    Sleep                                               2
    ${mesInicio}=                  Get WebElement                       xpath://td//div[contains(text(),'${MES}')]
    Should Be Equal                ${mesInicio.text}                    ${MES}.
    Click Element                  ${mesInicio}
    Sleep                                               2
    ${diaInicio}=                  Get WebElement                       xpath://td//div[contains(text(),'${dd}')]
    Should Be Equal                ${diaInicio.text}                    ${dd}
    Click Element                  ${diaInicio}
    Sleep                                               3
    Click Element                  ${CampoDataFinal}
    Sleep                                               3

Inserir Data Final |${data}|
# Inserir Data Final |${dd}/${MES}/${aaaa}|
    Sleep    2
    ${dd}                          Get Substring        ${data}         0     2
    ${ddPrimeriaPosicao}           Get Substring        ${dd}           0     1

    IF    ${ddPrimeriaPosicao} == 0
    ${dd}                          Get Substring        ${data}                       1     2
    END
    ${MES}                         Get Substring        ${data}         3     6
    ${aaaa}                        Get Substring        ${data}         7     12
    Sleep                                               10
    Click Button                   ${BotaoDataFinal} 
    Sleep                                               1
    Click Element                  ${SetaDoCalendario}
    Sleep                                               1
    ${anoFinal}=                   Get WebElement                       xpath://td//div[contains(text(),'${aaaa}')]
    Should Be Equal                ${anoFinal.text}                     ${aaaa}
    Click Element                  ${anoFinal}
    Sleep                                               1
    ${mesFinal}=                   Get WebElement                       xpath://td//div[contains(text(),'${MES}')]
    Should Be Equal                ${mesFinal.text}                     ${MES}.
    Click Element                  ${mesFinal}
    Sleep                                               1
    ${diaFinal}=                   Get WebElement                       xpath://td//div[contains(text(),'${dd}')]
    Should Be Equal                ${diaFinal.text}                     ${dd}
    Click Element                  ${diaFinal}
    Sleep                                               5

Clicar Botao |${Botao}|
    Sleep                                               10
    ${Botao}    Run Keyword If
    ...    '${Botao}' == 'Novo'
    ...    Click Button    ${BtnNovo}
    ...    ELSE IF
    ...    '${Botao}' == 'Historico'
    ...    Click Button    ${BtnHistorico}
    ...    ELSE IF
    ...    '${Botao}' == 'Voltar'
    ...    Click Button    ${BtnVoltar}
    ...    ELSE IF
    ...    '${Botao}' == 'Fechar Pop-Up'
    ...    Click Button    ${BtnFechar}
    ...    ELSE IF
    ...    '${Botao}' == 'Editar'
    ...    Click Button    ${BtnEditar}
    ...    ELSE IF
    ...    '${Botao}' == 'Assinar'
    ...    Click Button    ${BtnAssinar}
    ...    ELSE IF
    ...    '${Botao}' == 'Excluir'
    ...    Click Button    ${BtnExcluir}
    ...    ELSE IF
    ...    '${Botao}' == 'Continuar'
    ...    Click Button    ${BtnContinuar}
    ...    ELSE IF
    ...    '${Botao}' == 'Cancelar'
    ...    Click Button   ${BtnCancelar}
    ...    ELSE IF
    ...    '${Botao}' == 'Imprimir'
    ...    Click Button   ${BtnImprimir}
    ...    ELSE IF
    ...    '${Botao}' == 'Salvar'
    ...    Click Button   ${BtnSalvar}
    ...    ELSE IF
    ...    '${Botao}' == 'Salvar Texto'
    ...    Click Button   ${BtnSalvarTexto}
    ...    ELSE IF
    ...    '${Botao}' == 'Salvar Texto Padrao'
    ...    Click Element   ${BtnSalvarTxtPadrao}
    ...    ELSE IF
    ...    '${Botao}' == 'Texto Pre-Definido'
    ...    Click Button   ${IncluirTxtPreDefinido}
    ...    ELSE IF
    ...    '${Botao}' == 'Confirmar'
    ...    Click Button   ${BtnConfirmar}
    ...    ELSE IF
    ...    '${Botao}' == 'Autorizar'
    ...    Click Button   ${BtnAutorizar}
    ...    ELSE IF
    ...    '${Botao}' == 'Voltar Lista Paciente'
    ...    Click Element   ${BtnVoltarPacLista}
    ...    ELSE IF
    ...    '${Botao}' == 'Documento em Aberto'
    ...    Click Element   ${BtnDocAberto}
    ...    ELSE IF
    ...    '${Botao}' == 'Seleciona Evolucao'
    ...    Click Element   ${SelecEvolucao}
    ...    ELSE IF
    ...    '${Botao}' == 'Ignorar Pendencia'
    ...    Click Element   ${BtnIgnorarPend}
    ...    ELSE IF
    ...    '${Botao}' == 'Fechar Historico'
    ...    Click Element   ${BtnFecharHistorico}

Insere Usuario|${Usuario}| e Senha|${Senha}| Pop Up Professor
    # Wait Until Element Is Visible    ${CampoUsuarioProf}    10
    Sleep                                                   3
    Click Element                    ${CampoUsuarioProf}
    Input Text                       ${CampoUsuarioProf}    ${Usuario}   
    Sleep                                                   3
    Click Element                    ${CampoSenhaProf}
    Input Text                       ${CampoSenhaProf}      ${Senha}
    Sleep                                                   2             

Inserir Texto Pre Definido
    Sleep                                                3
    Click Element                    ${TxtPreDefinido}
    Sleep                                                2

Inserir Hora|${Item}|
    Sleep    2
    Click Element                    ${InsereHoras}
    Sleep                                                2
    SeleniumLibrary.Input Text       ${InsereHoras}          ${Item}

Inserir Minutos|${Item}|
    Sleep    2
    Click Element                    ${InsereMinutos}
    Sleep                                                2
    SeleniumLibrary.Input Text       ${InsereMinutos}        ${Item}

Seleciona Historico
    # Sleep                                                3
    # Click Element                    ${SetaHistorico}
    Sleep                                                3
    Click Element                    ${SelecHistorico}
    Sleep                                                2
    Clicar Botao |Fechar Historico|
    Sleep                                                5

Copiar Historico
    Sleep                                                3
    Click Element             ${BtnCopiar}
    Sleep                                                5

Seleciona Data do Historico
    Sleep                                                1
    Click Element                    ${DataHistorico}
    Sleep                                                5
    # Click Element                    ${DataHistorico}

Insere Texto Evolucao|${Item}|
    Wait Until Element Is Visible    ${CampoDescricao}   10
    Sleep                                                1
    Click Element                    ${CampoDescricao}
    SeleniumLibrary.Input Text       ${CampoDescricao}   ${Item}
    Sleep                                                5

Insere Texto Evolucao Copia|${Item}|
    Wait Until Element Is Visible    ${CampoDescricao}   10
    Sleep                                                1
    Click Element             ${CampoDescricao}
    SeleniumLibrary.Input Text       ${CampoDescricao}   ${Item}
    Sleep                                                1

Insere Titulo Texto Padrao|${Item}|
    Wait Until Element Is Visible    ${CampoTituloTxtPadrao}   10
    Sleep                                                1
    Click Element                    ${CampoTituloTxtPadrao}
    SeleniumLibrary.Input Text       ${CampoTituloTxtPadrao}   ${Item}
    Sleep                                                1

Pesquisa Historico Por Data, Prestador, Especialidade
    Wait Until Element Is Visible    ${CampoPesuisaHistorico}    10
    Sleep                                                1
    Click Element                    ${CampoPesuisaHistorico}
    SeleniumLibrary.Input Text       ${CampoPesuisaHistorico}     21/07/2021
    Sleep                                                1
    # Validar Pesquisa Realizada|${ValidCampoData}||${LocatorSemResultado}|@print
    Sleep                                                3
    SeleniumLibrary.Input Text       ${CampoPesuisaHistorico}     CLINICA GERAL
    Sleep                                                1
    # Validar Pesquisa Realizada|${ValidCampoData}||${LocatorSemResultado}|@print
    Sleep                                                3
    SeleniumLibrary.Input Text       ${CampoPesuisaHistorico}     GEISHA ABREU SOARES DE PINA
    Sleep                                                1
    Validar Pesquisa Realizada|${ValidCampoData}||${LocatorSemResultado}|@print

Valida Impressao
    Switch Window                                        NEW
    Sleep                                                1
    Capture Page Screenshot

Insere Data Por Texto Anterior a 7 Dias
    Wait Until Element Is Visible    ${CampoDataInicial}          20
    Press Keys                       ${CampoDataInicial}          DEL
    SeleniumLibrary.Input Text       ${CampoDataInicial}          01/06/2021
    Press Keys                       ${CampoDataFinal}            DEL
    SeleniumLibrary.Input Text       ${CampoDataFinal}            01/06/2021

Insere Data Futura Por Texto 
    Wait Until Element Is Visible    ${CampoDataInicial}          20
    Press Keys                       ${CampoDataInicial}          DEL
    SeleniumLibrary.Input Text       ${CampoDataInicial}          12/01/2021
    Press Keys                       ${CampoDataFinal}            DEL
    SeleniumLibrary.Input Text       ${CampoDataFinal}            12/01/2021

Insere Data Anterior Do Atendimento Por Texto 
    Wait Until Element Is Visible    ${CampoDataInicial}          20
    Press Keys                       ${CampoDataInicial}          DEL
    SeleniumLibrary.Input Text       ${CampoDataInicial}          12/01/2017
    Press Keys                       ${CampoDataFinal}            DEL
    SeleniumLibrary.Input Text       ${CampoDataFinal}            12/01/2017

Validador |${Validador}|
    Sleep                                                5
    ${Validador}    Run Keyword If
    ...    '${Validador}' == 'POP-UP Evolucao'
    ...    Validar Pesquisa Realizada|${LocatorComResultado}||${LocatorSemResultado}|@print
    ...    ELSE IF
    ...    '${Validador}' == 'Evolucao Copia'
    ...    Validar Pesquisa Realizada|${ValidEvolucaoCopia}||${LocatorSemResultado}|@print
    ...    ELSE IF
    ...    '${Validador}' == 'Evolucao'
    ...    Validar Pesquisa Realizada|${ValidEvolucao}||${LocatorSemResultado}|@print
    ...    ELSE IF
    ...    '${Validador}' == 'Salvar'
    ...    Validar Pesquisa Realizada|${ValidEvolucaoSalvar}||${LocatorSemResultado}|@print
    ...    ELSE IF
    ...    '${Validador}' == 'Excluir Evolucao'
    ...    Validar Pesquisa Realizada|${ValidExcluirEvolucao}||${LocatorSemResultado}|@print
    ...    ELSE IF
    ...    '${Validador}' == 'Botao Copiar'
    ...    Page Should Not Contain    ${BtnCopiar}
    ...    Capture Page Screenshot
    ...    ELSE IF
    ...    '${Validador}' == 'Cancelar Evolucao'
    ...    Validar Pesquisa Realizada|${ValidCancelarEvolucao}||${LocatorSemResultado}|@print
    ...    ELSE IF
    ...    '${Validador}' == 'Impressao'
    ...    Page Should Contain Element    ${ValidImprimir}
    ...    ELSE IF
    ...    '${Validador}' == 'Botao Imprimir'
    ...    Page Should Not Contain      ${BtnImprimir}
    ...    ELSE IF
    ...    '${Validador}' == 'Salvar Texto Padrao'
    ...    Validar Pesquisa Realizada|${ValidTxtPadrao}||${LocatorSemResultado}|@print
    ...    ELSE IF
    ...    '${Validador}' == 'Botao Novo'
    ...    Validar Pesquisa Realizada|${BtnNovo}||${LocatorSemResultado}|@print
    ...    ELSE IF
    ...    '${Validador}' == 'Alteracao Professor'
    ...    Validar Pesquisa Realizada|${ValidAuteracaoProf}||${LocatorSemResultado}|@print
    ...    ELSE IF
    ...    '${Validador}' == 'Botao Editar'
    ...    Validar Pesquisa Realizada|${BtnEditar}||${LocatorSemResultado}|@print
    ...    ELSE IF
    ...    '${Validador}' == 'Lista Paciente'
    ...    Validar Pesquisa Realizada|${ValidListaPaciente}||${LocatorSemResultado}|@print
    ...    ELSE IF
    ...    '${Validador}' == 'Campo Invalido'
    ...    Validar Pesquisa Realizada|${LocatorComResultado}||${CampoInvalido}|@print

Clicar Botao Novo
    Wait Until Element Is Visible           ${BtnNovo}          20
    Click Element                           ${BtnNovo}
    
Validar Botao Novo Nao Exibido
    Element Should Not Be Visible           ${BtnNovo} 