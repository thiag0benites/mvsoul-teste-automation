##################################################################################################################################
# Autor: Marcos Costa
# Descrição: Configurar e centralizar as parametrizações do processo da nota fiscal.
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
${Checkbox1}     xpath=//button[@id='inp:snUtilizaNfe_btn']
${Checkbox2}     xpath=//button[@id='inp:snUtilizaNfeMvintegra_btn']
${Checkbox3}     xpath=//button[@id='inp:snFecharTelaConversaoAut_btn']
${Checkbox4}     xpath=//button[@id='inp:snAlteraRpsSemNfe_btn']
${Checkbox5}     xpath=//button[@id='inp:snExigeSequenciaRps_btn']
${Checkbox6}     xpath=//button[@id='inp:snCancelarRpsSemNfe_btn']
${Checkbox7}     xpath=//button[@id='inp:snCancelamentoIntegrado_btn']
${Checkbox8}     xpath=//button[@id='inp:snProcessoInutilizacaoRps_btn']
${Checkbox9}     xpath=//button[@id='inp:snExibeAtendimentoRps_btn']
${Checkbox10}    xpath=//button[@id='inp:snUtilizaCartaCorrecao_btn']
${Checkbox11}    xpath=//button[@id='inp:snUtilizaSubstituicaoNf_btn']
${Checkbox12}    xpath=//button[@id='inp:snCancelaNfSubstituida_btn']
# Pais
${BtPaisA}    xpath=//*[@id="inp:cdPaisPadrao"]
${BtPaisB}    xpath=//*[@id="PG_GERAL_cdPaisPadrao"]/button/span[1]
${BtPaisC}    xpath=//*[@id="#filterLov"] 
${BtPaisD}    xpath=//*[@id="btfilter"] 
${BtPaisE}    xpath=//*[@id="btok"]
#Descricao URL/Motivo
${CpUrlA}    xpath=//input[@id='inp:dsUrlEspelhoNfe']
${CpMoti}    xpath=//input[@id='inp:cdMotivoCancelamentoPadrao']
# Opcional
${CptabA}    xpath=//*[@id="TAB_CONFIGURACAO_TAB_CONFIGURACAO_tab1"]
${CptabB}    xpath=//*[@id="TAB_CONFIGURACAO_TAB_CONFIGURACAO_tab2"]
${CptabC}    xpath=//*[@id="TAB_CONFIGURACAO_TAB_CONFIGURACAO_tab3"]
${CptabD}    xpath=//*[@id="TAB_CONFIGURACAO_TAB_CONFIGURACAO_tab4"]
${CptabE}    xpath=//*[@id="TAB_CONFIGURACAO_TAB_CONFIGURACAO_tab0"]
# Salvar e Valida Msg de Registro Salvo
${BtSalvar}    xpath=//*[@id="tb-record-save"]/a/i
${MgsVerif}    xpath=//p[@class='notifications-item-text']