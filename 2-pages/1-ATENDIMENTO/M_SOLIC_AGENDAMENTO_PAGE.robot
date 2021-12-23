##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Solicitação de Agendamento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoDtInicial}                xpath=//input[@id="inp:dataInicial"]
${CampoDtFinal}                  xpath=//input[@id="inp:dataFinal"]
${CampoSituacao}                 xpath=//input[@id="situacao_ac"]
${BotaoPesquisar}                xpath=//button[@id="btnPesquisar"]
${StatusAguardando}              xpath=//div[@data-member="TP_SITUACAO"][@title="Aguardando"] 
${StatusAgendado}                xpath=//div[@data-member="TP_SITUACAO"][@title="Agendado"] 
${StatusCancelado}               xpath=//div[@data-member="TP_SITUACAO"][@title="Cancelado"] 