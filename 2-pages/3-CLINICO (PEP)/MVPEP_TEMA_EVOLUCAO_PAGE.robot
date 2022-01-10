##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de Login
${DivLinhasResultadoBusca}          xpath=//table[@class='mat-table cdk-table inpatients-table ng-star-inserted']//tbody//td[@class='mat-cell cdk-cell pacient-column put-divisor cdk-column-patient mat-column-patient ng-star-inserted']
${PacienteLista}                    xpath=//tbody//tr[@class='mat-row cdk-row ng-star-inserted']//span[@class='clickable-area semi-bold patient-provider'][contains(text(),' 1312429, CATARINA SILVA ')]
${BtnNovo}                          xpath=//mat-icon[text()="cadastro"]/../..
${InsereHoras}                      xpath=//input[@formcontrolname='hours']
${InsereMinutos}                    xpath=//input[@formcontrolname='minutes']
${CampoDataInicial}                 xpath=//input[@formcontrolname='referenced']
${CampoDataFinal}                   xpath=//input[@formcontrolname='started']
${CampoTituloTxtPadrao}             xpath=//input[@placeholder='Confirme o nome do texto padrão.']
${CampoPesuisaHistorico}            xpath=//input[@placeholder='Pesquise...']
${SetaDoCalendario}                 xpath=//div[@class='mat-calendar-arrow']
${BotaoDataInicial}                 xpath=//button[@class='mat-focus-indicator mat-icon-button mat-button-base']
${BtnFecharHistorico}               xpath=//mat-icon[@class='mat-icon notranslate mv-basico mat-icon-no-color'][contains(text(),'fechar')]
${BtnFechar}                        xpath=//button[@class='mat-focus-indicator mv-dialog-header-close-handler mat-icon-button mat-button-base ng-star-inserted']
${BotaoDataFinal}                   xpath=//button[@class='mat-focus-indicator mat-icon-button mat-button-base']
${BtnVoltar}                        xpath=/html/body/pep-app/mat-sidenav-container/mat-sidenav-content/mv-sidenav-container/section/div/div/pep-portal/pep-medical-record/pep-medical-record-content/div/div/pep-evolution-insert/mv-frame/mv-frame-content/mv-toolbar[2]/button[1]
${BtnSalvar}                        xpath=//button[@class='mat-primary mv-button']
${BtnSalvarTexto}                   xpath=//button[@class='mv-button mv-button-w-icon']//mat-icon[contains(text(),'salvar')]
${BtnHistorico}                     xpath=//button[@mattooltip='Histórico']
${BtnCopiar}                        xpath=/html/body/pep-app/mat-sidenav-container/mat-sidenav-content/mv-sidenav-container/section/div/div/pep-portal/pep-medical-record/pep-medical-record-content/div/div/pep-evolution-list/pep-history-container/mat-drawer-content/mv-frame/mv-frame-content/mv-toolbar[2]/mv-toolbar-row/button[2]
${BtnEditar}                        xpath=//button[@class='mat-focus-indicator mat-tooltip-trigger mat-icon-button mat-button-base ng-star-inserted']
${BtnExcluir}                       xpath=/html/body/pep-app/mat-sidenav-container/mat-sidenav-content/mv-sidenav-container/section/div/div/pep-portal/pep-medical-record/pep-medical-record-content/div/div/pep-evolution-insert/mv-frame/mv-frame-content/mv-toolbar[2]/button[2]
${BtnContinuar}                     xpath=//button[@class='mat-warn mv-button']
${BtnCancelar}                      xpath=/html/body/pep-app/mat-sidenav-container/mat-sidenav-content/mv-sidenav-container/section/div/div/pep-portal/pep-medical-record/pep-medical-record-content/div/div/pep-evolution-list/pep-history-container/mat-drawer-content/mv-frame/mv-frame-content/mv-toolbar[2]/mv-toolbar-row/button[3]
${BtnAutorizar}                     xpath=//button[@class='mat-primary mv-button']
${BtnImprimir}                      xpath=/html/body/pep-app/mat-sidenav-container/mat-sidenav-content/mv-sidenav-container/section/div/div/pep-portal/pep-medical-record/pep-medical-record-content/div/div/pep-evolution-list/pep-history-container/mat-drawer-content/mv-frame/mv-frame-content/mv-toolbar[2]/mv-toolbar-row/button[1]
${BtnSalvarTxtPadrao}               xpath=/html/body/pep-app/mat-sidenav-container/mat-sidenav-content/mv-sidenav-container/section/div/div/pep-portal/pep-medical-record/pep-medical-record-content/div/div/pep-evolution-insert/mv-frame/mv-frame-content/section/form/div/div[2]/button
${BtnSalvarTitulo}                  xpath=//*[@id="mat-dialog-1"]/pep-insert-title/mv-dialog-footer/button[2]
${BtnConfirmar}                     xpath=//*[@id="mat-dialog-1"]/pep-evolution-dialog-selection/mv-dialog-footer/mv-toolbar/button[2]
${BtnDocAberto}                     xpath=//a[@class='mv-anchor'][contains(text(),'Um documento aberto.')]
${BtnVoltarPacLista}                xpath=/html/body/pep-app/mat-sidenav-container/mat-sidenav-content/mv-sidenav-container/section/div/div/pep-portal/pep-medical-record/pep-medical-record-content/mv-toolbar/a/span/mat-icon
${BtnIgnorarPend}                   xpath=//button[@class='mat-warn mv-button']
${IncluirTxtPreDefinido}            xpath=/html/body/pep-app/mat-sidenav-container/mat-sidenav-content/mv-sidenav-container/section/div/div/pep-portal/pep-medical-record/pep-medical-record-content/div/div/pep-evolution-insert/mv-frame/mv-frame-content/section/form/div/mv-toolbar/button
${TxtPreDefinido}                   xpath=//h3[@class='mat-line'][contains(text(),'1 DPO CESÁREA -EVOLUÇÃO IVAN')]
${ValidEvolucaoMedica}              xpath=//h3[@class='mat-line'][contains(text(),'EVOLUCAO MEDICA')]
${CampoDescricao}                   xpath=//textarea
${BtnAssinar}                       xpath=//button[@class='mat-primary mv-button mv-button-w-icon']
${LocatorSemResultado}              xpath=//p[contains(text(),'Não há histórico de evoluções para o paciente.')]
${LocatorComResultado}              xpath=//mat-dialog-container
${ValidEvolucao}                    xpath=//p[@class='ng-star-inserted'][contains(text(),'Evolução criada com sucesso.')]
${ValidEvolucaoCopia}               xpath=//p[@class='format-text pep-break-word'][contains(text(),'Texte Automação Cópia')]
${ValidEvolucaoSalvar}              xpath=//p[@class='ng-star-inserted'][contains(text(),'Evolução salva com sucesso')]
${ValidExcluirEvolucao}             xpath=//p[@class='ng-star-inserted'][contains(text(),'Evolução excluída com sucesso')]
${ValidCancelarEvolucao}            xpath=//p[@class='ng-star-inserted'][contains(text(),'Cancelado com sucesso!)]
${ValidImprimir}                    id=print
${ValidAuteracaoProf}               xpath=//p[@class='ng-star-inserted'][contains(text(),'Não é possível alterar evolução cujo dono é outro prestador.')]
${ValidTeladitar}                   xpath=//h3[contains(text(),'Editar evolução')]
${ValidTxtPadrao}                   xpath=//*[@id="cdk-overlay-24"]/mv-toasts-wrapper/div/mv-toast-container/mv-floating-toast/mv-toast/div[2]/p
${ValidListaPaciente}               xpath=//section[@class='table-container mv-scrollable']
${CampoInvalido}                    xpath=//mv-error
${ValidCampoData}                   xpath=//div[@ng-reflect-trigger='[object HTMLElement]']
${DataHistorico}                    xpath=//mv-expansion-panel//h3[contains(text(),'20/07/2021')]
# ${SelecHistorico}                   xpath=/html/body/pep-app/mat-sidenav-container/mat-sidenav-content/mv-sidenav-container/section/div/div/pep-portal/pep-medical-record/pep-medical-record-content/div/div/pep-evolution-list/pep-history-container/pep-history/pep-history-list/div/mv-accordion/mv-expansion-panel[6]/div/div/pep-history-list/a[1]/div/div[2]
${SelecHistorico}                   xpath=//mv-expansion-panel[@ng-reflect-expanded='true']//mat-icon[@role='img'][normalize-space()='bloquear']
${SetaHistorico}                    xpath=//pep-evolution-list//mv-expansion-panel[1]//mv-expansion-header[1]//div[1]//mat-icon[1]
${SelecEvolucao}                    xpath=//h3[text()="Evolução"]/../../..
${CampoUsuarioProf}                 xpath=//input[@formcontrolname='username']
${CampoSenhaProf}                   xpath=//input[@formcontrolname='password']
# ${LocatorSemResultado}              xpath=/html/body/pep-app/mat-sidenav-container/mat-sidenav-content/mv-sidenav-container/section/div/div/pep-portal/pep-medical-record/pep-medical-record-content/div/div/pep-evolution-list/pep-history-container/mat-drawer-content/mv-frame/mv-frame-content/mv-toolbar[2]/mv-toolbar-row/button[2]
