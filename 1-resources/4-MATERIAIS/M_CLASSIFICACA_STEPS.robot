##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/4-MATERIAIS/M_CLASSIFICACA_PAGE.robot

*** Keywords ***

Campos Obrigatorios a serem preenchidos e Salvar
    Preencher campo                                         ${CampoEditavel}    20
    Click no Item                                           ${DescricaoEspecies}
    Preencher campo                                         ${CampoEditavel}    AUTOMACAO
    Click no Item                                           ${CodigoClasse}
    Preencher campo                                         ${CampoEditavel}    20
    Click no Item                                           ${DescricaoClasse}
    Preencher campo                                         ${CampoEditavel}    AUTOMACAO
    Click no Item                                           ${CodigoSubclasse}
    Preencher campo                                         ${CampoEditavel}    20
    Click no Item                                           ${DescricaoSubclasse}
    Preencher campo                                         ${CampoEditavel}    AUTOMACAO
    Clicar Botao Salvar
    
    
Preencher Abas de Prescricao e Faturamento e Salvar    
    Click no Item                                           ${BtnPrescricao}
    Selecionar Item Na Lista                                ${BtnTipoDeEsquema}           CUIDADOS DE ENFERMAGEM                 CUIDADOS DE ENFERMAGEM
    Click no Item                                           ${BtnFaturamento}
    Selecionar Item Na Lista                                ${BtnGrupoDeProcedimentos}    ANATOMIA PATOLOGICA E CITOPATOLOGIA    ANATOMIA PATOLOGICA E CITOPATOLOGIA
    Selecionar Item Na Lista                                ${BtnTabelaFaturamento}       192                                    192
    Clicar Botao Salvar

    



