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
${CampoBairro}                                  xpath=//*[@id="inp:dspDsBairro"]
${CampoLogradouro}                              xpath=//*[@id="inp:dspDsLogradouro"]
${CampoInscMunicipal}                           xpath=//*[@id="inp:nrInscricaoMunicipal"]
${CampoInscEstadual}                            xpath=//*[@id="inp:nrInscricaoEstadual"]
${CampoNumero}                                  xpath=//*[@id="inp:nrEndereco"]
${CampoTelefone}                                xpath=//*[@id="inp:nrFone"]
${CampoProcurar}                                xpath=//*[@id="inp:procurar"]
${CampoAgencia}                                 xpath=//*[@id="inp:cdAgencia"]
${CampoAgenciaDigito}                           xpath=//*[@id="inp:cdDigitoAgencia"]
${CampoContaCorrente}                           xpath=//*[@id="inp:cdConta"]
${CampoContaCorDigito}                          xpath=//*[@id="inp:cdDigitoContaCorrente"]
${CampoCodPaisInat}                             xpath=//div[@class='slick-cell b2 f2 selected ui-fixed-width']
${CampoDescriNacInat}                           xpath=//div[@class='slick-cell b1 f1 selected']
${CampoDescriNacAtivo}                          xpath=//input[@class='editor-text mode-edit']


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
${BtnOkPopUp}                                   xpath=//button[@class='btn btn-primary']
${BtnConfirmar}                                 xpath=//*[@id="btnConfirma"]
${BtnBairro}                                    xpath=//*[@id="dspDsBairro"]/button
${BtnLogradouro}                                xpath=//*[@id="dspDsLogradouro"]/button
${BtnProcurar}                                  xpath=//*[@id="btnProcurar"]
${BtnConfirmaLogradouro}                        xpath=//*[@id="cepLogradouros_btnConfirma"]
${BtnBanco}                                     xpath=//*[@id="cdBanco"]/button
${BtnCodPais}                                   xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${BtnSalvar}                                    xpath=//i[@class='mv-basico-salvar']
${BtnCadastroNac}                               xpath=//*[@id="btChamaNacionalidade"]
${FecharAba}                                    xpath=//*[@id="react"]/div/div[1]/ul/li[2]/a[2]/i


### VARIADOS  ###
${SelectCidade}                                 xpath=//*[@id="grdLov"]/div[4]/div[3]/div/div[2]/div/div
${ValidNacinalidade}                            xpath=//p[@class='notifications-item-text'][contains(text(), 'Registros gravados com sucesso')]