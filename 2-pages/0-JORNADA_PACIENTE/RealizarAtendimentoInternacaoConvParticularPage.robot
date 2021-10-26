##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da página de Realizar Atendimento Internação Convênio Particular
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina
${inputIntCodPaciente}    id=inp:atendime_cdPaciente
${inputMedRef}    id=inp:nmPrestadorReferencia
${inputDataHrPrevAlta}    id=inp:dtPrevistaAlta
${inputLeito}     xpath=(//div[@data-member='CD_LEITO']//input[@id='inp:cdLeito'])[2]
