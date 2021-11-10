##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Prestador Externo
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLimpar}                        xpath=//a[@title="Limpar"]
${CampoNrConselho}                    xpath=//input[@id="inp:nrConselho"]
${CampoNomePrestador}                 xpath=//input[@id="inp:nmPresExt"]
${CampoCPF}                           xpath=//input[@id="inp:nrCpfCgc"]
${BotaoLovConselho}                   xpath=//div[@id="cdConselho"]/button
${BotaoLovEspecialidade}              xpath=//div[@id="cdEspecialid"]/button
${BotaoLovCBO}                        xpath=//div[@id="cdCbos"]/button    