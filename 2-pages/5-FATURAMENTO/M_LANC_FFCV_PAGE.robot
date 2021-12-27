##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###



### Botoes ###
${BtnIncluirItem}                        xpath=//button[@id="btnIncluiItem"]
${BtnSalvar}                             xpath=//a[@title="Salvar"]
${BtnExecutarConsulta}                   xpath=//a[@title="Executar Consulta"]
${BtnAdicionar}                          xpath=//a[@title="Adicionar"]
${BtnSair}                               xpath=//a[@title="Sair"]



### Diversos ###


${Alerta}                                xpath=//p[@class="notifications-item-text"][contains(text(),"Registros gravados com sucesso")]






