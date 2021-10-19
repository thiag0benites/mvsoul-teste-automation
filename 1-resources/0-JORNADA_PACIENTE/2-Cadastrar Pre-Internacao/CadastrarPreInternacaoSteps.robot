##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Passo a passo do Cadastro de Pre-Internacao para a Jornada do Paciente
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../../2-pages/0-JORNADA_PACIENTE/CadastrarPreInternacaoPage.robot

*** Variable ***

*** Keywords ***
Preencher campos |${codPaciente}|,|${origem}|,|${codMedico}|,|${especialidade}|,|${convenio}|,|${plano}|,|${procedimento}|,|${tipoAcomodacao}|,|${tipoInternacao}|,|${acompanhante}|,|${servico}|${print}
    Preencher campo    ${inputCodPaciente}    ${codPaciente}
    Sleep    1
    Preencher campo    ${inputOrigem}    ${origem}
    Sleep    1
    Preencher campo    ${inputMedico}    ${codMedico}
    Sleep    1
    Preencher campo    ${inputEspecialidade}    ${especialidade}
    Sleep    1
    Preencher campo    ${inputConvenio}    ${convenio}
    Sleep    1
    Preencher campo    ${inputPlano}    ${plano}
    Sleep    1
    Preencher campo    ${inputProcedimento}    ${procedimento}
    Sleep    1
    Preencher campo    ${inputTipoAcomodacao}    ${tipoAcomodacao}
    Sleep    1
    Preencher campo    ${inputTipoInternacao}    ${tipoInternacao}
    Sleep    1
    Seleciona Item Combobox    ${selectAcompanhante}    ${acompanhante}
    Sleep    1
    Preencher campo    ${inputServico}    ${servico}
    Sleep    1