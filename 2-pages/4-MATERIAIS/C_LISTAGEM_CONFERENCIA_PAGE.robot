##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${CampoaValidar}                   xpath=//div[@title='Conferida'] 


### Botoes ###
${btnPesquisar}                    xpath=//*[@id="tb-search"]/a
${BtnValidar}                      xpath=//button[@id='btnValidar']
${BtnAlerta}                       xpath=//button[@class='btn btn-primary'][contains(text(),"Sim")]
${BtnExecutarConsulta}             xpath=//a[@title='Executar Consulta']
${BtnOk}                           xpath=//button[@class='btn btn-primary'][contains(text(),"OK")]

### Diversos ###
${Alerta}                          xpath=//p[@class='notifications-item-text']






