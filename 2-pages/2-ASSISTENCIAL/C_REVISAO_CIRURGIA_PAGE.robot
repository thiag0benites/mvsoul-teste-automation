##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Revisão de Cirurgia
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${TituloPrincipal}                  xpath=//div[@id="dspTitulo01"]
${CampoAviso}                       xpath=//div[@data-member="CD_AVISO_CIRURGIA"]/..
${CampoAvisoEditavel}               xpath=//input[@class="editor-text mode-search"]    
${BotaoExecConsulta}                xpath=//a[@title="Executar Consulta"]
${CampoDataAviso}                   xpath=//div[@data-member="DT_AVISO"]               
${CampoStatusAviso}                 xpath=//div[@data-member="TP_SITUACAO"]
${CampoSuspensaoAviso}              xpath=//div[@data-member="SN_SUSPENSAO"]    
${CampoCentroCirurgico}             xpath=//div[@data-member="DS_CEN_CIR"]
${CampoSalaCirurgica}               xpath=//div[@data-member="DS_SAL_CIR"]
${CampoCdPaciente}                  xpath=//input[@title="1309086"]
${CampoNmPaciente}                  xpath=//input[@title="CRISTIANE SILVA"]
${CampoProcFatura}                  xpath=//div[@data-member="CD_PRO_FAT"]
${CampoDescCirurgia}                xpath=//div[@data-member="DSP_DS_CIRURGIA"]
${CampoConvenio}                    xpath=//div[@data-member="DSP_NM_CONVENIO"]
${AbaPrestadores}                   xpath=//a[text()="Prestadores"]
${AbaEquipamentos}                  xpath=//a[text()="Equipamentos"]
${AbaCaixasCir}                     xpath=//a[text()="Caixas Cir."]
${AbaProdutos}                      xpath=//a[text()="Produtos"]
${AbaImagem}                        xpath=//a[text()="Imagem"]
${AbaLaboratorio}                   xpath=//a[text()="Laboratório"]
${AbaSangue}                        xpath=//a[contains(text(),"Sangue")]
${AbaObservacao}                    xpath=//a[text()="Observação"]
${AbaConfCanc}                      xpath=//a[contains(text(),"Confirmação")]
${AbaHistAlteracoes}                xpath=//a[text()="Histórico de Alterações"]
${AbaHistEvolucao}                  xpath=//a[text()="Histórico de Evolução"]
${AbaHistEmail}                     xpath=//a[text()="Histórico de Emails"]