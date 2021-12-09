##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Cadastro de Convênios
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${MensagemToast}                        xpath=//p[@class="notifications-item-text"]
${CampoDescricao}                       xpath=//input[@id="inp:convenio_nmConvenio"]
${BotaoLovFormaApre}                    xpath=//div[@id="TAB_CONVENIO_cdForApre"]/button
${CampoRazaoSocial}                     xpath=//input[@id="inp:nmRazaoSocial"]
${CampoEmail}                           xpath=//input[@id="inp:dsEMail"]    
${CampoContato}                         xpath=//input[@id="inp:nmContato"]
${CampoCargoContato}                    xpath=//input[@id="inp:dsCargoContato"]
${CampoContatoRecurso}                  xpath=//input[@id="inp:nmContatoGlosas"]
${BotaoLovLogradouro}                   xpath=//div[@id="TAB_CONVENIO_dspTipoLogradouro"]/button
${CampoEndereco}                        xpath=//input[@id="inp:dsEndereco"]
${CampoNrEndereco}                      xpath=//input[@id="inp:nrEndereco"]
${CampoBairro}                          xpath=//input[@id="inp:dsBairro"]
${BotaoLovCidade}                       xpath=//div[@id="TAB_CONVENIO_dsCidade"]/button
${CampoUF}                              xpath=//input[@id="inp:dsUf"]
${CampoPais}                            xpath=//input[@id="inp:nmPais"]
${CampoCEP}                             xpath=//input[@id="inp:nrCep"]
${CampoFone}                            xpath=//input[@id="inp:nrFone"]
${CampoCNPJ}                            xpath=//input[@id="inp:nrCgc"]
${CampoInscMunic}                       xpath=//input[@id="inp:nrInscricaoMunicipal"]
${CampoInscEstad}                       xpath=//input[@id="inp:nrInscricaoEstadual"]

${CampoIR}                              xpath=//input[@id="inp:vlPercIr"]        
${CampoISS}                             xpath=//input[@id="inp:vlPercIss"]      
${CampoIdConvEstrang}                   xpath=//input[@id="inp:idConvenioEstrangeiro"]
${BotaoLovModelMatric}                  xpath=//div[@id="TAB_CONVENIO_dsGrupoVal"]/button
${CampoObjIntegracao}                   xpath=//input[@id="inp:nmObjetoIntegracao"] 

${CampoEndCorresp}                      xpath=//input[@id="inp:dsEnderecoCorrespondencia"]
${CampoBairroCorresp}                   xpath=//input[@id="inp:dsBairroCorrespondencia"]
${BtLovCidadeCorresp}                   xpath=//div[@id="TAB_CONVENIO_dsCidadeCorrespondencia"]/button
${CampoUFCorresp}                       xpath=//input[@id="inp:dsUfCorrespondencia"]
${CampoCEPCorresp}                      xpath=//input[@id="inp:nrCepCorrespondencia"]
${CampoEndCobranca}                     xpath=//input[@id="inp:dsEnderecoCobranca"]
${CampoBairroCobranca}                  xpath=//input[@id="inp:dsBairroCobranca"]
${BtLovCidadeCobranca}                  xpath=//div[@id="TAB_CONVENIO_dsCidadeCobranca"]/button
${CampoUFCobranca}                      xpath=//input[@id="inp:dsUfCobranca"]
${CampoCEPCobranca}                     xpath=//input[@id="inp:nrCepCobranca"]

${BtLovFornecedor}                      xpath=//div[@id="TAB_EXTRAS_cdFornecedor"]/button
${CampoDiasPgto}                        xpath=//input[@id="inp:nrDiasPagtoRemessa"]
${CbEmitirNF}                           xpath=//button[@id="inp:snGeraNfConvPaciente_btn"] 

${CampoDiasAmb}                         xpath=//input[@id="inp:nrDiasRetorno"]
${CampoDiasExterno}                     xpath=//input[@id="inp:nrDiasRetornoExterno"]
${CampoHorasUrgencia}                   xpath=//input[@id="inp:qtHorasRetornoPaeu"]

${CbPermiteAtdAmb}                      xpath=//button[@id="inp:snPermiteAtendAmbInt_btn"]
${CbPermiteAtdExt}                      xpath=//button[@id="inp:snPermiteAtendExtInt_btn"]
${CbPermiteAtdUrg}                      xpath=//button[@id="inp:snPermiteAtendUrgInt_btn"]

${CbExigeLaudo}                         xpath=//button[@id="inp:snExigeLaudoTxt_btn"]

${CampoValidMax}                        xpath=//input[@id="inp:nrDiasRequisicaoMedica"]

${CampoRegANS}                          xpath=//input[@id="inp:nrRegistroOperadoraAns"]

${CampoQtdFimFaixa}                     xpath=//input[@id="inp:nrLimitePreimpre"]
${CbConsignadoConta}                    xpath=//button[@id="inp:snLancaConsignadoNaConta_btn"]
${CbGuiaPrestador}                      xpath=//button[@id="inp:snProtGuiaPrestador_btn"]
${CbEmailNotificacao}                   xpath=//button[@id="inp:snEmailNotificacao_btn"]
${CampoLimiteRemessa}                   xpath=//input[@id="inp:nrLimitePreRemessa"]
${CbFechaAmbSemImprimir}                xpath=//button[@id="inp:snFechaAmbSemImprimir_btn"]

${BotaoLovProcedimento}                 xpath=//div[@id="TAB_EXTRAS_convenio_cdProFat"]/button
${CampoPercentual}                      xpath=//input[@id="inp:vlPercentual"]
${BotaoLovMotAuditoria}                 xpath=//div[@id="TAB_EXTRAS_cdMotivoAuditoria"]/button

${CampoCdCarteiraCaracter}              xpath=//input[@id="inp:cdChrAntNrCarteiraBarra"]
${CampoCdCarteiraQtd}                   xpath=//input[@id="inp:nrPosIniCdCarteiraBarras"]
${CampoCdCarteiraFinal}                 xpath=//input[@id="inp:nrPosFimCdCarteiraBarras"]
${CampoDtValidadeCaracter}              xpath=//input[@id="inp:cdChrAntDtValidadeBarra"]
${CampoDtValidadeQtd}                   xpath=//input[@id="inp:nrPosIniDtValidadeBarras"]
${CampoDtValidadeFinal}                 xpath=//input[@id="inp:nrPosFimDtValidadeBarras"]

${CbCriaAtdCir}                         xpath=//button[@id="inp:snCriaGuiaOpmeFscc_btn"]
${CbObrigaPlano}                        xpath=//button[@id="inp:snObrigaPlanoAgenda_btn"]
${CbImpedeFechamento}                   xpath=//button[@id="inp:snImpedeFechamConta_btn"]
${CampoNrDiasAutorizacao}               xpath=//input[@id="inp:nrDiasAutorizaOpme"]

${AbaEmpresa}                           xpath=//a[@id="CNV_PRINCIPAL_CNV_PRINCIPAL_tab2"]
${CampoCdEmpresa}                       xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input 
${CampoFormularioNF}                    xpath=//div[@data-member="CD_FORMULARIO_NF"]/..
${CampoFormaApresentacao}               xpath=//div[contains(@aria-labelledby, "grdEmpresaConvenio_col4")] 
${BotaoLov}                             xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button   


