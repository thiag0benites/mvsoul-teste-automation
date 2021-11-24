##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: CAD_PRE_PROVISORIO
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/7-APOIO_TI/CAD_PRE_PROVISORIO_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher os campos |${cartaoNacionalSaude}|,|${tipoPrestador}|,|${crm}|
    ${pessoaFisica}    Criar pessoa fisica    feminino
    Preencher Campo                         ${CampoNome}                  ${pessoaFisica.nome} 
    Sleep              1
    ${cpf}    Replace String    ${pessoaFisica.cpf}    .    ${EMPTY}
    ${cpf}    Replace String    ${cpf}    -    ${EMPTY}
    Preencher Campo                         ${CampoCpf}                   ${cpf} 
    Sleep              1
    Preencher Campo                         ${CampoCartaoNS}              ${cartaoNacionalSaude} 
    Sleep              1
    Preencher Campo                         ${CampoPrestador}             ${tipoPrestador} 
    Sleep              1
    Preencher Campo                         ${CampoCrm}                   ${crm} 

Validar Codigo gerado para o prestador 
    Validar Item        ${CodPrestador}