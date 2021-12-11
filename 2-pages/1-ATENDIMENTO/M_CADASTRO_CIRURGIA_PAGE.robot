##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###


${CampoTempoUltilizacao}                 xpath=id="inp:vlTempoPrevisto"
${CampoAtendimento}                      xpath=//input[@id="inp:cdAtendimento"]
${CampoDivSanguineo}                     xpath=//div[@data-member="TP_SANGUINEO"]/input
${CampoDataEntrada}                      xpath=//input[@id="inp:dtRealizacao"]
${CampoDataSaida}                        xpath=//input[@id="inp:dtSaidaSalCir"]
${CampoDataEntradaAnestesia}             xpath=//input[@id="inp:dtInicioAnestesia"]
${CampoDataSaidaAnestesia}               xpath=//input[@id="inp:dtFimAnestesia"]
${CampoDataEntradaCirurgia}              xpath=//input[@id="inp:dtInicioCirurgia"]
${CampoDataSaidaCirurgia}                xpath=//input[@id="inp:dtFimCirurgia"]
${CampoDataEntradaLimpeza}               xpath=//input[@id="inp:dtInicioLimpeza"]
${CampoDataSaidaLimpeza}                 xpath=//input[@id="inp:dtFimLimpeza"]
${CampoASA}                              xpath=//input[@id="inp:cdAsa"]
${CampoCentroCirurgico}                  xpath=//input[@id="inp:cdCenCir"]
${CampoSalaCirurgica}                    xpath=//input[@id="inp:cdSalCir"]
${CampoEquipeMedica}                     xpath=//input[@id="inp:cdEquipeMedica"]
${CampoCIDPre}                           xpath=//input[@id="inp:cdCid"]
${CampoCIDPos}                           xpath=//input[@id="inp:cdCidFinal"]



${DivPrestador}                          xpath=//div[@data-member="CD_PRESTADOR"][@data-row="0"]/..





### Botoes ###
${btnNovaCirurgia}                    xpath=//button[@data-member="BTN_NOVA_CIRURGIA"]





### Diversos ###


${Alerta}                             xpath=//p[@class="notifications-item-text"]





