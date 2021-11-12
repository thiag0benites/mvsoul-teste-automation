##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### CAMPO ###
${CampoNome}                                    xpath=//*[@id="inp:nmResponsavel"]
${CampoFiltro}                                  xpath=//*[@id="#filterLov"]
${CampoCPF}                                     xpath=//*[@id="nrCpf"]
${CampoCNPJ}                                    xpath=//*[@id="inp:nrCnPj"]

### BOTOES ###
${BtnPJ}                                        xpath=//*[@id="rbPessoaJuridica_btn"]
${BtnPF}                                        xpath=//*[@id="rbPessoaFisica_btn"]
${BtnEstrangeiro}                               xpath=//*[@id="inp:snEstrangeiro_btn"]
${BtnRespAtivo}                                 xpath=//*[@id="inp:snAtivo_btn"]
${BtnNacionalidade}                             xpath=//*[@id="cdCidadania"]/button
${BtnFiltrar}                                   xpath=//*[@id="btfilter"]
${BtnOk}                                        xpath=//*[@id="btok"]
${BtnCEP}                                       xpath=//*[@id="nrCep"]/button
${BtnUF}                                        xpath=//*[@id="cdUf"]/button
${BtnLocalidade}                                xpath=//*[@id="dspNmLocalidade"]/button

### VARIADOS  ###