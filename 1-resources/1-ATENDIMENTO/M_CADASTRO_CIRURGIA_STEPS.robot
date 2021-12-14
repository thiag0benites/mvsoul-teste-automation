##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/1-ATENDIMENTO/M_CADASTRO_CIRURGIA_PAGE.robot

*** Variables ***

*** Keywords ***
Cadastro da Cirurgia|${TempoUltilizacao}||${Atendimento}||${TipoSanguineo}||${DataEntrada}||${DataSaida}||${DataEntradaAnestesia}||${DataSaidaAnestesia}||${DataEntradaCirurgia}||${DataSaidaCirurgia}||${DataEntradaLimpeza}||${DataSaidaLimpeza}||${ASA}||${CentroCirurgico}||${SalaCirurgica}||${EquipeMedica}||${CIDPre}||${CIDPos}|
    Wait Until Element Is Visible    ${CampoTempoUltilizacao}    120
    Preencher campo    ${CampoTempoUltilizacao}    ${TempoUltilizacao}
    Send Keys    enter
    Preencher campo    ${CampoAtendimento}    ${Atendimento}
    Send Keys    enter
    Preencher campo    ${CampoTipoSanguineo}    ${TipoSanguineo}
    Send Keys    enter
    Preencher campo    ${CampoDataEntrada}    ${DataEntrada}
    Send Keys    enter
    Preencher campo    ${CampoDataSaida}    ${DataSaida}
    Send Keys    enter
    Preencher campo    ${CampoDataEntradaAnestesia}    ${DataEntradaAnestesia}
    Send Keys    enter
    Preencher campo    ${CampoDataSaidaAnestesia}    ${DataSaidaAnestesia}
    Send Keys    enter
    Preencher campo    ${CampoDataEntradaCirurgia}    ${DataEntradaCirurgia}
    Send Keys    enter
    Preencher campo    ${CampoDataSaidaCirurgia}    ${DataSaidaCirurgia}
    Send Keys    enter
    Preencher campo    ${CampoDataEntradaLimpeza}    ${DataEntradaLimpeza}
    Send Keys    enter
    Preencher campo    ${CampoDataSaidaLimpeza}    ${DataSaidaLimpeza}
    Send Keys    enter
    Preencher campo    ${CampoASA}    ${ASA}
    Preencher campo    ${CampoCentroCirurgico}    ${CentroCirurgico}
    Send Keys    enter
    Preencher campo    ${CampoSalaCirurgica}    ${SalaCirurgica}
    Send Keys    enter
    Preencher campo    ${CampoEquipeMedica}    ${EquipeMedica}
    Send Keys    enter
    Preencher campo    ${CampoCIDPre}    ${CIDPre}
    Send Keys    enter
    Preencher campo    ${CampoCIDPos}    ${CIDPos}
    Send Keys    enter
    Click no Item    ${btnNovaCirurgia}

Cirurgia|${SubGrupoCirurgia}||${GrupoDeCirurgias}||${Cirurgia}||${PotencialDeContaminacao}||${Lateralidade}||${PrestadorCirurgiao}||${AtividadeMedica}|
    Preencher campo    ${CampoSubGrupoCirurgia}    ${SubGrupoCirurgia}
    Send Keys    enter
    Preencher campo    ${CampoGrupoDeCirurgias}    ${GrupoDeCirurgias}
    Send Keys    enter
    Preencher campo    ${CampoCirurgia}    ${Cirurgia}
    Send Keys    enter
    Click no Item    ${CampoPotencialDeContaminacao}
    Preencher campo    ${CampoPotencialDeContaminacao}    ${PotencialDeContaminacao}
    Send Keys    enter
    Preencher campo    ${CampoLateralidade}    ${Lateralidade}
    Send Keys    enter
    Preencher campo    ${CampoPrestadorCirurgiao}    ${PrestadorCirurgiao}
    Send Keys    enter
    Preencher campo    ${CampoAtividadeMedica}    ${AtividadeMedica}
    Send Keys    enter
    Click no Item    ${btnRetornar}

Validacao dos Dados
    Validar Pop-Pup de Alerta e Clicar    ${Alerta}    ${btnSim}
    Wait Until Element Is Visible    ${CampoCodigo}    60
    ${Codigo}    Get Element Attribute    ${CampoCodigo}    title
    Altera massa de dados da "m_cadastro_cirurgia", linha "1", coluna "Codigo", valor "${Codigo}"