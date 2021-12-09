##################################################################################################################################
# Autor: Marcos Costa
# Decrição: Solicitar pedido de exame em atendimento por convenio lançando cobrança para conta do convenio
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/2-ASSISTENCIAL/M_PED_EXA_ATEND_PAGE.robot

*** Keywords ***
Acessar "M_PED_EXA_ATEND"${printscreen} ${las}
    Unselect Frame
    # Pesquisa Escrita (Correção deve ser alinhada com o Thiago )
    Click Element    ${HomeXpathBtnPesquisa}
    Preencher campo    ${HomeXpathBtnPesquisaInput}    M_PED_EXA_ATEND
    Sleep    1
    Click Element    ${ScreenPedidoExame}
    #### LAS Send Keys #####
    IF    "${las}" == "@las"
        # Sleep    1
        Seleciona frame    ${IdIframe}    180
        Wait Until Element Is Visible    ${classLasDisplay}    60
        Unselect Frame
        # Sleep    1
        Send Keys    tab
        Send Keys    enter
    END
    #### End LAS Send Keys #####
    Seleciona frame    ${IdIframe}    180
    Sleep    3
    Run Keyword If    '${printscreen}' == '@print'    Capture Page Screenshot
    Sleep    60
Clique no botao Paciente
    Click no Item    ${BtPaciente}
    sleep    2

Clique na aba Paciente > Recepcao
    Click no Item    ${AbPacientRecep}

Pesquise, selecione o paciente e clique no botao "Pedido" |${NmPesquisa}|
    Clicar no Campo e Preencher Informacao    ${NmPaciente}    ${NmPaciente}    ${NmPesquisa}
    Click no Item    ${BtPesquisar}
    Click no Item    ${BtPedido}

Preencha os Dados do Atendimento Peso |${VlPeso}| Altura |${VlAltura}| Convenio |${VlConv}| Plano |${VlPlano}| Prestador |${VlPrestador}| Setor |${VlSetor}| Tp Solicitacao |${VlRotina}| Local de Coleta |${VlColeta}| Data Coleta |${VlDatCol}| Data Validade |${VlDatValidade}|
    Clicar no Campo e Preencher Informacao    ${CpPeso}    ${CpPeso}    ${VlPeso}
    Clicar no Campo e Preencher Informacao    ${CpAltura}  ${CpAltura}  ${VlAltura}
    # Preenchimento do Campo Convenio
    Click no Item  ${BtConvenio}
    Clicar no Campo e Preencher Informacao  ${CpListConv}  ${CpListConv}  ${VlConv}
    Click no Item  ${BtFiltro}
    Click no Item  ${BtOkConv}
    # Preenchimento do Campo Plano
    Click no Item  ${BtConpla}
    Clicar no Campo e Preencher Informacao  ${BtLovConpla}  ${BtLovConpla}  ${VlPlano}
    Click no Item  ${BtFilterConpla}
    Click no Item  ${BtOkConpla}
    # Preenchimento do Campo Medico Solicitante
    Click no Item  ${BtPrest}
    Clicar no Campo e Preencher Informacao  ${BtLovPrest}  ${BtLovPrest}   ${VlPrestador}
    Click no Item  ${BtFilterPrest}
    Click no Item  ${BtOkPrest}
    # Preenchimento do Campo Setor Solicitante
    Click no Item  ${BtSetor}
    Clicar no Campo e Preencher Informacao  ${BtLovSetor}  ${BtLovSetor}  ${VlSetor}
    Click no Item  ${BtFilSetor}
    Click no Item  ${BtOkSetor}
    # Tipo de Solicitação
    Click no Item  ${BtSolic}
    Clicar no Campo e Preencher Informacao  ${CpTpSolic}  ${CpTpSolic}  ${VlRotina}
    # Local de Coleta
    Click no Item  ${BtLocalCol}
    Clicar no Campo e Preencher Informacao  ${BtLovCol}  ${BtLovCol}  ${VlColeta}
    Click no Item  ${BtFilterCol}
    Click no Item  ${BtOkCol}
    # Data da Coleta e Data de Validade da coleta
    Clicar no Campo e Preencher Informacao  ${DatColeta}  ${DatColeta}  ${VlDatCol}
    Clicar no Campo e Preencher Informacao  ${DatValidade}  ${DatValidade}  ${VlDatValidade}
Preencha os dados do exame a ser solicitado Exame Solicitado |${VlExame}| Prestador Exame Solicitante |${VlPrestExaSol}| Respostas |${VlResposta}|
    Click no Item    ${BtGrdExa} 
    Click no Item    ${BtExame}
    Clicar no Campo e Preencher Informacao    ${BtLovExa}    ${BtLovExa}    ${VlExame}
    Click no Item    ${BtFilterExa}
    Click no Item    ${BtOkExa} 
    # Medico Exame Solicitante
    Click no Item     ${BtGrdPrest}
    Click no Item     ${BtGrdPresSel}
    Clicar no Campo e Preencher Informacao    ${BtLovPrestSel}    ${BtLovPrestSel}   ${${VlPrestExaSol}}
    Click no Item     ${BtFilterCel}
    Click no Item     ${BtOkPrestCel}
    # Aba Perguntas
    Click no Item     ${BtAbaPer}          
    Click no Item     ${CpAbaResp}         
    Clicar no Campo e Preencher Informacao    ${BtLovResp}    ${BtLovResp}  ${VlResposta}       
    Click no Item     ${BtLovResp}      
    Click no Item     ${BtFilterResp} 
    Click no Item     ${BtOkResp}
    Click no Item     ${BalaoExaLiberado}
Clique no botão "Conta Convenio"
    Click no Item    ${BtContaConv}
    Sleep    2
    Click no Item    ${BtSalvaRegAmb}
 
    


    
