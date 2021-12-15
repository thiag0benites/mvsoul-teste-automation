##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Consulta de Cirurgias (Agendadas, Realizadas e Canceladas)
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoAvisoPesquisa}                xpath=//input[@class="editor-text mode-search"]
${AbaDiagnostico}                    xpath=//a[@id="CV_DETALHES_DO_AVISO_CV_DETALHES_DO_AVISO_tab1"]
${AbaConfirmacao}                    xpath=//a[@id="CV_DETALHES_DO_AVISO_CV_DETALHES_DO_AVISO_tab2"]
${AbaCancelamento}                   xpath=//a[@id="CV_DETALHES_DO_AVISO_CV_DETALHES_DO_AVISO_tab3"]
${AbaFiltrarCirurgiao}               xpath=//a[@id="CV_DETALHES_DO_AVISO_CV_DETALHES_DO_AVISO_tab4"]
${AbaFiltrarPed}                     xpath=//a[@id="CV_DETALHES_DO_AVISO_CV_DETALHES_DO_AVISO_tab5"]
${AbaFiltrarUTI}                     xpath=//a[@id="CV_DETALHES_DO_AVISO_CV_DETALHES_DO_AVISO_tab6"]
${AbaObservacao}                     xpath=//a[@id="CV_DETALHES_DO_AVISO_CV_DETALHES_DO_AVISO_tab7"]