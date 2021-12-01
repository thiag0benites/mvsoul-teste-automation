##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../../2-pages/0-JORNADA_PACIENTE/RegistrarDescricaoCirurgicaPage.robot

*** Variable ***

*** Keywords ***
Informar os campos Data de início da cirurgia |${dados}[descCirDtInicio]|,Data fim da cirurgia |${dados}[descCirDtFim]|, CID pré operatório |${dados}[agCirurNumCid]|, CID pós operatório |${dados}[agCirurNumCid]|

Descrever a cirurgia