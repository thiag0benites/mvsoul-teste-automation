##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/5-FATURAMENTO/M_PRESTADOR_SUS_PAGES.robot
                

*** Keywords ***

Consulta de Contas AIH|${Prontuario}||${Paciente}|
    Wait Until Element Is Visible                         ${CampoProntuario}                         180
    Preencher campo                                       ${CampoProntuario}                         ${Prontuario}
    Click no Item                                         ${btnPesquisar}
    Validar Elemento Pelo Titulo                          ${Paciente}
    Click no Item                                         ${btnImprimir} 
    Click no Item                                         ${btnSair} 

















