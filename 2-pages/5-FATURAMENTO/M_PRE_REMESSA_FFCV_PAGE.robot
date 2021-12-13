##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###


${CampoTempoUltilizacao}                 xpath=//input[@id="inp:vlTempoPrevisto"]
${CampoAtendimento}                      xpath=//input[@id="inp:cdAtendimento"]
${CampoTipoSanguineo}                     xpath=//div[@data-member="TP_SANGUINEO"]/input
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
${CampoSubGrupoCirurgia}                 xpath=//input[@id="inp:cdSubGrupoCirurgia"]
${CampoGrupoDeCirurgias}                 xpath=//input[@id="inp:cdGrupoCirurgia"]
${CampoCirurgia}                         xpath=//input[@id="inp:cdCirurgia"]
${CampoPotencialDeContaminacao}          xpath=//input[@id="inp:cdNaturezaCirurgia"]
${CampoLateralidade}                     xpath=//input[@id="dsLateralidade_ac"]
${CampoPrestadorCirurgiao}               xpath=//input[@id="inp:cdPrestador"]
${CampoAtividadeMedica}                  xpath=//input[@id="inp:cdAtiMed"]



${DivPrestador}                          xpath=//div[@data-member="CD_PRESTADOR"][@data-row="0"]/..

${CampoCodigo}                           xpath=//input[@id="inp:cdAvisoCirurgia"]




### Botoes ###
${btnNovaCirurgia}                    xpath=//button[@data-member="BTN_NOVA_CIRURGIA"]
${btnRetornar}                        xpath=//button[@data-member="BTN_RETORNAR"]
${btnSim}                             xpath=//button[@class="btn btn-primary"][contains(text(),"Sim")]





### Diversos ###


${Alerta}                             xpath=//p[@class="notifications-item-text"]





