##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Retorno de Chamados
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***

${AbaParecer}                    xpath=//a[@id="TB_SETOR_TB_SETOR_tab1"][@href="#TB_SETOR-INSTRUCAO"]
${CampoResposta}                 xpath=//textarea[@id="inp:dsSacParecerSetor"]
${BotaoRespondido}               xpath=//button[@id="inp:snRespondido_btn"]

${Mensagem}                      xpath=//p[@class="notifications-item-text"]


