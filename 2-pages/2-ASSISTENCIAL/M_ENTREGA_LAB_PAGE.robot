##################################################################################################################################
# Autor: leticia Andrade
# Decrição: Elementos e metodos da página
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${campoPedido}    xpath=//input[@id='inp:cdPedLab']
${botaoPesquisar}    xpath=//button[@id='btnPesquisar']
${checkboxEntrega}    xpath=//div[2]/div/div[2]/div/div/form/div[1]/fieldset/div/fieldset[3]/div/fieldset/div/div/div[4]/div[3]/div/div/div[5]/div/button
${botaoProtocolo}    xpath=//button[@id='btnProtocolo']
${campoTipoResp}    xpath=//input[@id='inp:cdTipParen']
${campoNomeResp}    xpath=//input[@id='inp:nmResponsavel']
${campoOrgaoEmissor}    xpath=//input[@id='inp:dsDocumento']
${campoCPF}       xpath=//input[@id='inp:nrCpf']
${campoUsuarioResp}    xpath=//input[@id='inp:cdUsuario']
${campoDtEntrega}    xpath=//input[@id='inp:dtEntregaExame']
${campoObservacao}    xpath=//textarea[@id='inp:dsObservacao']
${btnConfirmar}    xpath=//button[@id='btnConfirmar']
${btnVoltar}      xpath=//button[@id='btnVoltarProtocolo']
${campoProtocolo}    xpath=//input[@id='inp:cdEntregaExame']
