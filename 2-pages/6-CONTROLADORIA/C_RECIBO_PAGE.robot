##################################################################################################################################
# Autor: José Neto
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
### Campos ###



### Botoes ###
${BtnDepAntecipado}                                xpath=//*[@id="inp:snCaucao_btn"]
${BtnRecebimento}                                  xpath=//*[@id="inp:snRecbPart_btn"]
${BtnReceitaDireta}                                xpath=//*[@id="inp:snReceitaDireta_btn"]
${BtnDespesaDireta}                                xpath=//*[@id="inp:snDespesaDireta_btn"]
${BtnPagamento}                                    xpath=//*[@id="inp:snPagamento_btn"]
${BtnDevolucaoDepAnt}                              xpath=//*[@id="inp:snDevolucaoCaucao_btn"]
${BtnExecutarPesquisa}                             xpath=//*[@id="btnPesquisa"]
${BtnImprimir}                                     xpath=//*[@id="btnImprimir"]



### Diversos ###
${ColunaStatus}                                    xpath=//*[@id="slickgrid_727657grdRecibo_col3_lbl"]
${PrimeiraLinhaStatus}                             xpath=//*[@id="grdRecibo"]/div[4]/div[3]/div/div[1]/div[4]/div
