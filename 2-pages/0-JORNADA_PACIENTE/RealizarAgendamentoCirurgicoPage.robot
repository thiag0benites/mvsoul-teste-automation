##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da página de Agendamento cirurgico
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot
     
*** Variable ***
### Elementos da Pagina de Agendamento cirurgico     
${inputCentroCirurgico}    id=inp:cdCenCir
${inputSalaCirurgica}    id=inp:cdSalCir
${inputCirurgia}    id=inp:cdCirurgia
${inputConvenio}    id=inp:cdConvenio
${inputPlano}     id=inp:cdConPla
${inputPrestadorCirurgiao}    id=inp:cdPrestadorCirurgiao
${inputMedAssociado}    id=inp:cdPrestadorIndicacao
${inputCdPaciente}     id=inp:aSimples_cdPaciente
${inputUnidInternacao}    id=inp:cdUnidIntAge
${inputEqpMedica}    id=inp:aSimples_cdEquipeMedica    
${inputAnestesista}    id=inp:cdPrestadorAnestesista    
${inputNumCID}    id=inp:cdCid      

