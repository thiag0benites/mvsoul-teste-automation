##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
### CAMPOS ###
${CampoAtendimento}                                            xpath=//input[@id='inp:cdAtendimento']
${CampoPaciente}                                               xpath=//input[@id='inp:nmPaciente']
${CampoHonDoAtend}                                             xpath=//input[@id='inp:vlRepasseTotal']



### BOTOES ###
${BtnExecutarConsulta}                                         xpath=//a[@title='Executar Consulta']
${BtnConsultaHonorario}                                        xpath=//button[@id='btnConsRepAtend']

### DIVERSOS ###
${AtendimentoComResultado}                                     xpath=//div[@class='slick-cell b0 f0 selected ui-fixed-width']//div[@title='8974']
${AtendimentoSemResultado}                                     xpath=//div[@class='slick-cell b0 f0 selected ui-fixed-width']//div[@title]
${PacienteComResultado}                                        xpath=//div[@class='slick-cell b0 f0 selected ui-fixed-width']//div[@title='70089']
${PacienteSemResultado}                                        xpath=//div[@class='slick-cell b0 f0 selected ui-fixed-width']//div[@title]
${HonorComResultado}                                           xpath=//input[@id='inp:vlRepasseTotal'][@title='394,85']
${HonorSemResultado}                                           xpath=//input[@id='inp:vlRepasseTotal'][@title]
${MsgErroTeste}                                                xpath=//p[@class='notifications-item-text']