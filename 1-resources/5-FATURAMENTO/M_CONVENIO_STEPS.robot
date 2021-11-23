##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Cadastro de Convênios
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/M_CONVENIO_PAGE.robot
Resource    ../4-MATERIAIS/M_ENTRADA_NOVA_STEPS.robot
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
    #Preencher Campo                              ${CampoObjIntegracao}       INTEGRACAO

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
    Preencher Campo                              ${CampoHorasUrgencia}       1      ]

                