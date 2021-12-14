##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Empresas
###################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot
 
*** Variable ***
${CampoCodigo}                xpath=//input[@id="inp:cdMultiEmpresa"]
${CampoNomeFantasia}          xpath=//input[@id="inp:dsMultiEmpresa"]
${CampoRazaoSocial}           xpath=//input[@id="inp:dsRazaoSocial"]
${CampoCNPJ}                  xpath=//input[@id="inp:cdCgc"]
${CampoInscEstadual}          xpath=//input[@id="inp:cdIest"]
${BotaoLovLogradouro}         xpath=//div[@id="TAB_EMPRESA_cdTipoLogradouro"]/button
${CampoEndereco}              xpath=//input[@id="inp:dsEndereco"]
${CampoNumero}                xpath=//input[@id="inp:nrEndereco"]
${CampoCEP}                   xpath=//input[@id="inp:nrCep"]
${BotaoLovCidade}             xpath=//div[@id="TAB_EMPRESA_cdCidade"]/button
${CampoDDD}                   xpath=//input[@id="inp:nrDddEmpresa"]
${CampoTelefone}              xpath=//input[@id="inp:nrTelefoneEmpresa"]
${BotaoLovMoeda}              xpath=//div[@id="TAB_EMPRESA_cdMoeda"]/button

${AbaAssociacoes}             xpath=//a[@id="CNV_PRINCIPAL_CNV_PRINCIPAL_tab1"]
${BotaoLovTipoEmpresa}        xpath=//div[@id="TAB_ASSOCIACOES_cdTipoEmpresa"]/button

${AbaInfoAdicionais}          xpath=//a[@id="CNV_PRINCIPAL_CNV_PRINCIPAL_tab2"]
${CampoDiretorGeral}          xpath=//input[@id="inp:nmDiretorGeral"]
${CampoDDDFax}                xpath=//input[@id="inp:nrDddFax"]
${CampoNrFax}                 xpath=//input[@id="inp:nrFax"]
${CampoEmailResp}             xpath=//input[@id="inp:dsEmailResponsavel"]
${CampoContador}              xpath=//input[@id="inp:dsNomeContador"]
${BotaoLovFornecedor}         xpath=//div[@id="TAB_ENDERECO_cdFornecedor"]/button

${AbaTransacoes}              xpath=//a[@id="CNV_PRINCIPAL_CNV_PRINCIPAL_tab3"]
${BotaoLovCdReduzido}         xpath=//div[@id="TAB_TRANS_ENTRE_EMPRESA_cdReduzidoPgEmpTrans"]/button

${AbaSPED}                    xpath=//a[@id="CNV_PRINCIPAL_CNV_PRINCIPAL_tab4"]
${CampoSitEspecial}           xpath=//input[@id="TAB_SPED_nrSitEspecial_ac"]
${CampoSuframa}               xpath=//input[@id="inp:nrSuframa"]
${CampoRepLegal}              xpath=//input[@id="inp:dsNomeRepresentante"]
${CampoCPFRepLegal}           xpath=//input[@id="inp:cdCpfRepresentante"]
${CampoQualiRepLegal}         xpath=//input[@id="TAB_SPED_cdQualificacaoAssin_ac"]

${AbaSPEDContribuicoes}       xpath=//a[@id="CNV_PRINCIPAL_CNV_PRINCIPAL_tab5"]
${CampoPIS}                   xpath=//input[@id="inp:cdCstPis"]
${CampoConfins}               xpath=//input[@id="inp:cdCstCofins"]
${CampoRegIncidencia}         xpath=//input[@id="TAB_SPED_PIS_COFINS_cdCodIncTrib_ac"]
${CampoMtdApropriacao}        xpath=//input[@id="TAB_SPED_PIS_COFINS_cdIndAproCred_ac"]
${CampoCdIndicador}           xpath=//input[@id="TAB_SPED_PIS_COFINS_cdIndRegCum_ac"]

${AbaNotaFiscal}              xpath=//a[@id="CNV_PRINCIPAL_CNV_PRINCIPAL_tab6"]

${AbaLivroISS}                xpath=//a[@id="CNV_PRINCIPAL_CNV_PRINCIPAL_tab7"]
${CampoNomeTecnico}           xpath=//input[@id="inp:dsNomeTecnico"]

${AbaSubstituicao}            xpath=//a[@id="CNV_PRINCIPAL_CNV_PRINCIPAL_tab8"]

