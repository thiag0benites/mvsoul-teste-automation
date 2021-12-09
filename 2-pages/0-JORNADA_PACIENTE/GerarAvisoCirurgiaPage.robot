##################################################################################################################################
# Autor: Thiago Benites
# Decrição: Elementos e metodos da página de Gerar aviso cirurgia
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina
${inputAvDtPrevInter}    id=inp:dtPrevInter
${inputAvTempoPrevisto}    id=inp:vlTempoPrevisto
${inputAvCodPaciente}    id=inp:cdPaciente
${inputAvCid}     id=inp:cdCid
${inputAvUnidInt}    id=inp:cdUnidInt
${inputAvCentrCir}    id=inp:cdCenCir
${inputAvSalaCir}    id=inp:cdSalCir
${inputAvEqptMed}    id=inp:cdEquipeMedica
${inputAvMedAssoc}    id=inp:cdPrestadorIndicacao