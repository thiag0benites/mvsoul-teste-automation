##################################################################################################################################
# Autor: Marcos Costa
# Decrição: Solicitar pedido de exame em atendimento por convenio lançando cobrança para conta do convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

#Campos
#Acessar a tela
${DiagTerapia}       xpath=//*[@id="workspace-menubar"]/ul/li[9]
${LaborAnalises}     xpath=//*[@id="workspace-menubar"]/ul/li[9]/div/ul/li[2]/a/span[1]
${Atendimento}       xpath=//*[@id="workspace-menubar"]/ul/li[9]/div/ul/li[2]/div/ul/li[2]/a/span[1]
${PedExa}            xpath=//*[@id="workspace-menubar"]/ul/li[9]/div/ul/li[2]/div/ul/li[2]/div/ul/li[16]/a/span
#Acessar a tela
${NmPaciente}        xpath=//*[@id="inp:dsNomeFiltro"]



#Botões
${BtPaciente}        xpath=//*[@id="btnPaciente"]
${BtPesquisar}       xpath=//*[@id="RECEPCAO_btnPesquisar"]
${BtPedido}          xpath=//*[@id="RECEPCAO_btnSelecionar"]



#Check Box

# Abas
${AbPacientRecep}   xpath=//*[@id="CNV_PRINCIPAL_CNV_PRINCIPAL_tab1"]


