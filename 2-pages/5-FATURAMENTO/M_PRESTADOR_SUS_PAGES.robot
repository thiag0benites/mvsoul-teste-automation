##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###


${CampoProntuario}                       xpath=//input[@id="inp:idPaciente"]

${DivDataEntrega}                        xpath=//div[@data-member="DT_ENTREGA_DA_FATURA"][@data-row="0"]/..






### Botoes ###
${btnPesquisar}                          xpath=//button[@data-member="BT_ABRE_PESQUISA"]
${btnImprimir}                           xpath=//button[@data-member="BTN_IMPRIME"][contains(text(),"Imprimir")]
${btnSair}                               xpath=//button[@data-member="BTN_SAIR"]






### Diversos ###


${Alerta}                                xpath=//p[@class="notifications-item-text"]
${NomePaciente}                          xpath=//input[@id="inp:nmPaciente"][@title="EMILLY DOS SANTOS MOTTA"]





