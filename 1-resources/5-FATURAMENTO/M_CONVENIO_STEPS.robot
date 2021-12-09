##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Cadastro de Convênios
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/M_CONVENIO_PAGE.robot
Resource    ../2-ASSISTENCIAL/M_USUUNID_STEPS.robot



*** Variable ***

*** Keywords ***
Cancelar Consulta |${MensagemEsperada}|
    Click Elemento por titulo                    Cancelar
    Valida Mensagem                              ${MensagemToast}             ${MensagemEsperada}

Prencher Dados Cadastrais |${Descricao}| |${FormaApresentacao}| |${RazaoSocial}| |${Email}| |${Contato}| |${CargoContato}| |${ContatoRecurso}| |${Logradouro}| |${Endereco}| |${NrEndereco}| |${Bairro}| |${Cidade}| |${UF}| |${Pais}| |${CEP}| |${Fone}| |${CNPJ}| |${InscMunicipal}| |${InscEstadual}|
    Preencher Campo                              ${CampoDescricao}            ${Descricao}
    Selecionar Item Na Lista                     ${BotaoLovFormaApre}         ${FormaApresentacao}      ${FormaApresentacao}
    Preencher Campo                              ${CampoRazaoSocial}          ${RazaoSocial}
    Preencher Campo                              ${CampoEmail}                ${Email}
    Preencher Campo                              ${CampoContato}              ${Contato}
    Preencher Campo                              ${CampoCargoContato}         ${CargoContato}
    Preencher Campo                              ${CampoContatoRecurso}       ${ContatoRecurso}
    Selecionar Item Na Lista                     ${BotaoLovLogradouro}        ${Logradouro}             ${Logradouro}
    Preencher Campo                              ${CampoEndereco}             ${Endereco}
    Preencher Campo                              ${CampoNrEndereco}           ${NrEndereco}
    Preencher Campo                              ${CampoBairro}               ${Bairro}
    Selecionar Item Na Lista                     ${BotaoLovCidade}            ${Cidade}                 ${Cidade}
    Validar Elemento Pelo Titulo                 ${UF}                   
    Validar Elemento Pelo Titulo                 ${Pais}                
    Preencher Campo                              ${CampoCEP}                  ${CEP}
    Preencher Campo                              ${CampoFone}                 ${Fone}
    Preencher Campo                              ${CampoCNPJ}                 ${CNPJ}
    Preencher Campo                              ${CampoInscMunic}            ${InscMunicipal}
    Preencher Campo                              ${CampoInscEstad}            ${InscEstadual}

Preencher Dados do Faturamento |${IR}| |${ISS}| |${ConvEstrangeiro}| |${ModeloMatricula}|
    Preencher Campo                              ${CampoIR}                  ${IR}
    Preencher Campo                              ${CampoISS}                 ${ISS}
    Preencher Campo                              ${CampoIdConvEstrang}       ${ConvEstrangeiro}
    Selecionar Item Na Lista                     ${BotaoLovModelMatric}      ${ModeloMatricula}         ${ModeloMatricula}

Preencher Enderecos Adicionais |${EndCorresponcia}| |${BairroCorresp}| |${CidadeCorresp}| |${UFCorresp}| |${CEPCorresp}| |${EndCobranca}| |${BairroCobran}| |${CidadeCobran}| |${UFCobran}| |${CEPCobran}|
    Preencher Campo                              ${CampoEndCorresp}          ${EndCorresponcia}
    Preencher Campo                              ${CampoBairroCorresp}       ${BairroCorresp}
    Selecionar Item Na Lista                     ${BtLovCidadeCorresp}       ${CidadeCorresp}       ${CidadeCorresp} 
    Preencher Campo                              ${CampoUFCorresp}           ${UFCorresp}
    Preencher Campo                              ${CampoCEPCorresp}          ${CEPCorresp}
    Preencher Campo                              ${CampoEndCobranca}         ${EndCobranca}   
    Preencher Campo                              ${CampoBairroCobranca}      ${BairroCobran}     
    Selecionar Item Na Lista                     ${BtLovCidadeCobranca}      ${CidadeCobran}         ${CidadeCobran}    
    Preencher Campo                              ${CampoUFCobranca}          ${UFCobran}
    Preencher Campo                              ${CampoCEPCobranca}         ${CEPCobran}

Acessar Aba Complemento |${AbaComplemento}|
    Send Keys    tab
    Validar Acesso a Tela |${AbaComplemento}|

Preencher Dados do Financeiro |${Fornecedor}| |${DiasPgto}|
    Selecionar Item Na Lista                     ${BtLovFornecedor}          ${Fornecedor}           ${Fornecedor}
    Preencher Campo                              ${CampoDiasPgto}            ${DiasPgto}
    Marcar Checkbox |${CbEmitirNF}|
Preencher Controle de Retorno de Atendimentos |${DiasAmb}| |${DiasExterno}| |${HorasUrgencia}|
    Preencher Campo                              ${CampoDiasAmb}             ${DiasAmb}                      
    Preencher Campo                              ${CampoDiasExterno}         ${DiasExterno}                      
    Preencher Campo                              ${CampoHorasUrgencia}       ${HorasUrgencia}     

Marcar Checkbox Paciente Internado
    Marcar Checkbox |${CbPermiteAtdAmb}|
    Marcar Checkbox |${CbPermiteAtdExt}|
    Marcar Checkbox |${CbPermiteAtdUrg}|
    Marcar Checkbox |${CbExigeLaudo}|

Preencher Requisicao Medica |${ValidMax}|
    Preencher Campo                              ${CampoValidMax}             ${ValidMax}

Preencher Faixa de Guias |${QtdFimFaixa}| |${LimiteRemessa}|
    Preencher Campo                              ${CampoQtdFimFaixa}          ${QtdFimFaixa}
    Marcar Checkbox |${CbConsignadoConta}|
    Marcar Checkbox |${CbGuiaPrestador}|
    Marcar Checkbox |${CbEmailNotificacao}|
    Preencher Campo                              ${CampoLimiteRemessa}        ${LimiteRemessa}
    Marcar Checkbox |${CbFechaAmbSemImprimir}|

Preencher Configuracao para Taxa de Acrescimo |${Procedimento}| |${Percentual}| |${MotAuditoria}|
    Selecionar Item Na Lista                     ${BotaoLovProcedimento}       ${Procedimento}             ${Procedimento}   
    Preencher Campo                              ${CampoPercentual}            ${Percentual}        
    Selecionar Item Na Lista                     ${BotaoLovMotAuditoria}       ${MotAuditoria}             ${MotAuditoria} 

Preencher Posicao do Codigo da Carteira |${CdCarteiraCaracter}| |${CdCarteiraQtd}| |${CdCarteiraFinal}| |${DtValidadeCaracter}| |${DtValidadeQtd}| |${DtValidadeFinal}|
    Preencher Campo                              ${CampoCdCarteiraCaracter}     ${CdCarteiraCaracter}       
    Preencher Campo                              ${CampoCdCarteiraQtd}          ${CdCarteiraQtd}       
    Preencher Campo                              ${CampoCdCarteiraFinal}        ${CdCarteiraFinal}      
    Preencher Campo                              ${CampoDtValidadeCaracter}     ${DtValidadeCaracter}      
    Preencher Campo                              ${CampoDtValidadeQtd}          ${DtValidadeQtd}    
    Preencher Campo                              ${CampoDtValidadeFinal}        ${DtValidadeFinal}       

Preencher Guia de OPME |${DiasAutorizacao}|
    Preencher Campo                              ${CampoNrDiasAutorizacao}      ${DiasAutorizacao}
    Marcar Checkbox |${CbCriaAtdCir}|
    Marcar Checkbox |${CbObrigaPlano}|
    Marcar Checkbox |${CbImpedeFechamento}|

Acessar aba Empresa |${AbaEmpresa}|
    Click no Item                                 ${AbaEmpresa}
    Validar Acesso a Tela |${AbaEmpresa}|

Preencher Dados da Empresa |${CdEmpresa}| |${FormularioNF}| |${FormaApresentacaoEmp}|
    Preencher Campo                               ${CampoCdEmpresa}              ${CdEmpresa}
    Clicar Item e Selecionar da Lista             ${CampoFormularioNF}           ${BotaoLov}         ${FormularioNF}   ${FormularioNF}
    Clicar Item e Selecionar da Lista             ${CampoFormaApresentacao}      ${BotaoLov}         ${FormaApresentacaoEmp}  ${FormaApresentacaoEmp}
    