##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Consulta de Agenda - Centro Cirúrgico / Cirurgião
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${AbaPacienteRecepcao}    xpath=//a[@id="CNV_PRINCIPAL_CNV_PRINCIPAL_tab1"]
${CampoCdPaciente}    xpath=//input[@id="inp:cdPaciente"]
${BotaoPesquisar}    xpath=//button[@id="RECEPCAO_btnPesquisar"]
${BotaoDetalhes}    xpath=//button[@id="RECEPCAO_btnDetalhesCadPaciente"]
