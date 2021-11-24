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
Cancelar Consulta
    Click Elemento por titulo                    Cancelar
    Valida Mensagem                              ${MensagemToast}             Consulta cancelada.

Prencher Dados Cadastrais
    Preencher Campo                              ${CampoDescricao}            CONVENIO TESTE AUTOMACAO
    Selecionar Item Na Lista                     ${BotaoLovFormaApre}         MODELO PADRAO AMB            MODELO PADRAO AMB
    Preencher Campo                              ${CampoRazaoSocial}          RAZAO SOCIAL TESTE
    Preencher Campo                              ${CampoEmail}                email@teste.com
    Preencher Campo                              ${CampoContato}              CONTATO TESTE
    Preencher Campo                              ${CampoCargoContato}         DIRETOR
    Preencher Campo                              ${CampoContatoRecurso}       CONTATO RECURSO
    Selecionar Item Na Lista                     ${BotaoLovLogradouro}        ACESSO LOCAL                 ACESSO LOCAL
    Preencher Campo                              ${CampoEndereco}             ENDERECO TESTE
    Preencher Campo                              ${CampoNrEndereco}           100
    Preencher Campo                              ${CampoBairro}               BAIRRO TESTE
    Selecionar Item Na Lista                     ${BotaoLovCidade}            ABADIA                       ABADIA
    Validar Elemento Pelo Titulo                 BA                   
    Validar Elemento Pelo Titulo                 BRASIL                
    Preencher Campo                              ${CampoCEP}                  50200000
    Preencher Campo                              ${CampoFone}                 3333-4444
    Preencher Campo                              ${CampoCNPJ}                 87074609000193
    Preencher Campo                              ${CampoInscMunic}            49860750
    Preencher Campo                              ${CampoInscEstad}            49860760

Preencher Dados do Faturamento
    Preencher Campo                              ${CampoIR}                  12
    Preencher Campo                              ${CampoISS}                 10
    Preencher Campo                              ${CampoIdConvEstrang}       ESTRANGEIRO
    Selecionar Item Na Lista                     ${BotaoLovModelMatric}      Calculo Unibanco                Calculo Unibanco

Preencher Enderecos Adicionais
    Preencher Campo                              ${CampoEndCorresp}          ENDERECO TESTE
    Preencher Campo                              ${CampoBairroCorresp}       BAIRRO TESTE
    Selecionar Item Na Lista                     ${BtLovCidadeCorresp}       RIO DE JANEIRO        RIO DE JANEIRO
    Preencher Campo                              ${CampoUFCorresp}           RJ
    Preencher Campo                              ${CampoCEPCorresp}          50200000
    Preencher Campo                              ${CampoEndCobranca}         ENDERECO TESTE   
    Preencher Campo                              ${CampoBairroCobranca}      BAIRRO TESTE     
    Selecionar Item Na Lista                     ${BtLovCidadeCobranca}      JARDIM OLINDA                JARDIM OLINDA
    Preencher Campo                              ${CampoUFCobranca}          PR
    Preencher Campo                              ${CampoCEPCobranca}         50200000

Acessar Aba Complemento
    Send Keys    tab
    Validar Acesso a Tela |Complemento|

Preencher Dados do Financeiro
    Selecionar Item Na Lista                     ${BtLovFornecedor}          1000 MARCAS LTDA            1000 MARCAS LTDA
    Preencher Campo                              ${CampoDiasPgto}            10
    Marcar Checkbox |${CbEmitirNF}|
Preencher Controle de Retorno de Atendimentos
    Preencher Campo                              ${CampoDiasAmb}             1                      
    Preencher Campo                              ${CampoDiasExterno}         1                      
    Preencher Campo                              ${CampoHorasUrgencia}       1      

Marcar Checkbox Paciente Internado
    Marcar Checkbox |${CbPermiteAtdAmb}|
    Marcar Checkbox |${CbPermiteAtdExt}|
    Marcar Checkbox |${CbPermiteAtdUrg}|
    Marcar Checkbox |${CbExigeLaudo}|

Preencher Requisicao Medica 
    Preencher Campo                              ${CampoValidMax}             5
    Sleep  2
    #Preencher Campo                              ${CampoRegANS}               123456789

Preencher Faixa de Guias
    Preencher Campo                              ${CampoQtdFimFaixa}           5
    Marcar Checkbox |${CbConsignadoConta}|
    Marcar Checkbox |${CbGuiaPrestador}|
    Marcar Checkbox |${CbEmailNotificacao}|
    Preencher Campo                              ${CampoLimiteRemessa}         5
    Marcar Checkbox |${CbFechaAmbSemImprimir}|

Preencher Configuracao para Taxa de Acrescimo
    Selecionar Item Na Lista                     ${BotaoLovProcedimento}       BIÓPSIA DE NERVO         BIÓPSIA DE NERVO
    Preencher Campo                              ${CampoPercentual}            5        
    Selecionar Item Na Lista                     ${BotaoLovMotAuditoria}       ACEITO DIFERENÇA DE VALOR    ACEITO DIFERENÇA DE VALOR

Preencher Posicao do Codigo da Carteira
    Preencher Campo                              ${CampoCdCarteiraCaracter}     5        
    Preencher Campo                              ${CampoCdCarteiraQtd}          5        
    Preencher Campo                              ${CampoCdCarteiraFinal}        5        
    Preencher Campo                              ${CampoDtValidadeCaracter}     5        
    Preencher Campo                              ${CampoDtValidadeQtd}          5        
    Preencher Campo                              ${CampoDtValidadeFinal}        5        

Preencher Guia de OPME
    Preencher Campo                              ${CampoNrDiasAutorizacao}      5
    Marcar Checkbox |${CbCriaAtdCir}|
    Marcar Checkbox |${CbObrigaPlano}|
    Marcar Checkbox |${CbImpedeFechamento}|

Acessar aba Empresa
    Click no Item                                 ${AbaEmpresa}
    Validar Acesso a Tela |Informações do Convênio por Empresa|

Preencher Dados da Empresa
    Preencher Campo                               ${CampoCdEmpresa}              5
    Clicar Item e Selecionar da Lista             ${CampoFormularioNF}           ${BotaoLov}         FORMULARIO NF GERAL        FORMULARIO NF GERAL
    Clicar Item e Selecionar da Lista             ${CampoFormaApresentacao}      ${BotaoLov}         MODELO PADRAO CBHPM        MODELO PADRAO CBHPM
    