##################################################################################################################################
# Autor: Marcos Costa
# Decrição: Solicitar pedido de exame em atendimento por convenio lançando cobrança para conta do convenio
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/2-ASSISTENCIAL/M_PED_EXA_ATEND_PAGE.robot

*** Keywords ***	
Clique no botao Paciente
    Click no Item  ${BtPaciente}
    sleep  2 
Clique na aba Paciente > Recepcao
    Click no Item  ${AbPacientRecep}
Pesquise, selecione o paciente e clique no botao "Pedido" |${NmPesquisa}|
    Clicar no Campo e Preencher Informacao  ${NmPaciente}  ${NmPaciente}  ${NmPesquisa}
    Click no Item  ${BtPesquisar}
    Click no Item  ${BtPedido}
#Preencha os dados do atendimento 

    

