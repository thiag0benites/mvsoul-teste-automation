##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da página Realizar Alta Hospitalar
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de  Realizar Alta Hospitalar
*** Variable ***
### Elementos da Pagina
${inputAltCodAtend}    id=inp:cdAtendimento
${inputAltaHospMotivoAlta}    id=inp:cdMotAlt   
${inputAltaHospTipoLimp}    id=inp:cdTipoLimpeza  
#${inputAltaHospProcAlta}    
${inputAltaHospProcCih}    id=inp:dspCdSsmCih   
${inputAltaHospObsAlta}    id=inp:dsObsAlta    

