##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Passos da tela Pedidos de exames
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_PED_RX_PAGE.robot
Resource            ../../1-resources/2-ASSISTENCIAL/ATEURG_STEPS.robot



*** Variable ***

*** Keywords ***
####   Keyword para validar pré requisito do teste   ###
Criacao de atendimento |${NomeModulo}| |${TituloTela}| |${Paciente}| |${CdPaciente}| |${Medico2}| |${Origem}| |${LocalProc}| |${Destino}| |${TipoPaciente}| |${Servico}| |${CID}| |${Procedimento}| |${NumCarteira}| |${ValidadeCarteira}| |${MensagemSucesso}|
    Validar Configuracao de Acesso a Tela           ## Keyword para configurar parâmetro de acesso a tela principal ##
    Acessa a Tela Pela Busca |${NomeModulo}||${TituloTela}| @no @las
    #Acessar a tela "Atendimento>Urgência e Emergência>Atendimento>Atendimento"@nprint @no
    Validar Acesso a Tela |Atendimento de Urgência/Emergência|
    Clicar Botao Paciente   
    Pesquisar Pelo Paciente |${Paciente}| |${CdPaciente}|  
    Click no Item    ${BtnSim}
    Preencher Campos Obrigatorios |${Medico2}| |${Origem}| |${LocalProc}| |${Destino}| |${TipoPaciente}| |${Servico}| |${CID}| |${Procedimento}|
    Clicar Botao Carteira 
    Validar Informacoes Carteira |${NumCarteira}| |${ValidadeCarteira}|
    Click Elemento por titulo    Salvar
    Click no Item    ${BtnSim}
    Click no Item    ${BtnSim}
    Click no Item    ${BtnSim}
    Confirmar Atendimento |${MensagemSucesso}|
    
    
    
Captura do numero de atendimento |${suite}|${id}|
    Sleep    1
    Should Not Be Empty   ${CampoAtendimento}
    ${protocolo}    Get Element Attribute    ${CampoAtendimento}    title       
    Altera massa de dados da "${suite}", linha "${id}", coluna "Atendimento", valor "${protocolo}"
    Sleep    3

Preencher atendimento |${Atendimento}|
    Preencher Campo    ${CampoAtendimento2}     ${Atendimento}
    

Escolha o medico solicitante |${Medico}|
    Click no Item    ${BtnMedico}
    Click no Item      ${BtnOk2} 
    Click no Item    ${BtnMedico}
    Preencher Campo    ${FiltroMedico}    ${Medico}
    Click no Item    ${BtnFiltro}
    Click no Item    ${BtnOk}

Digite a data da coleta |${Data}|
    Preencher Campo    ${DataColeta}    ${Data}

Escolha <o setor executante> |${Setor}|, <o setor solicitante> |${Solicitante}|, <o tecnico> |${Tecnico}|, <o exame> |${Exame}|
#Escolha o setor executante
    Click no Item    ${BtnSetor}
    Preencher Campo    ${FiltroMedico}    ${Setor}
    Click no Item    ${BtnFiltro}
    Click no Item    ${BtnOk}
#Escolha o setor solicitante
    Click no Item    ${BtnSetorSol}
    Preencher Campo    ${FiltroMedico}    ${Solicitante}
    Click no Item    ${BtnFiltro}
    Click no Item    ${BtnOk}
#Escolha o tecnico
    Click no Item    ${BtnTecnico}
    Preencher Campo    ${FiltroMedico}    ${Tecnico}
    Click no Item    ${BtnFiltro}
    Click no Item    ${BtnOk}
#Escolha o exame
    Click no Item    ${LinhaExame}
    Click no Item    ${BtnExame}
    Preencher Campo    ${FiltroMedico}    ${Exame}
    Click no Item    ${BtnFiltro}
    Click no Item    ${LinhaDescricao}
    Click no Item    ${BtnOk}
    

Clicar em Salvar
    Click Elemento por titulo    Salvar
    Sleep    2

Captura do numero de pedido |${suite}|${id}|
    Sleep    1
    Should Not Be Empty   ${CampoPedido} 
    ${protocolo}    Get Element Attribute    ${CampoPedido}     title       
    Altera massa de dados da "${suite}", linha "${id}", coluna "NumeroPedido", valor "${protocolo}"
    Sleep    3