##################################################################################################################################
# Autor: Gabriel Passos
# Decrição: Elementos e metodos da página Transferência de Paciente para Centro Cirúrgico e Rpa
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de Consulta de Cadastro de Paciente
${inputTransfCodAtend}    id=inp:cdAtendimento
${selectGridAvCir}  xpath=//div[@data-member='CD_AVISO_CIRURGIA']