#################################################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/SCR5FMGLOSAS-001 "3-tests\5 - FATURAMENTO\M_GLOSAS.robot"
# firefox:        robot -v browser:firefox -d ./5-results/SCR5FMGLOSAS-001 "3-tests\5 - FATURAMENTO\M_GLOSAS.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/SCR5FMGLOSAS-001 "3-tests\5 - FATURAMENTO\M_GLOSAS.robot"
# firefox:        robot -v browser:headlessfirefox -d ./5-results/SCR5FMGLOSAS-001 "3-tests\5 - FATURAMENTO\M_GLOSAS.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/1-ATENDIMENTO/M_CADASTRO_CIRURGIA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
 # Suite registrada no gerenciador de dados
${suite}          m_cadastro_cirurgia
 # Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMCADASTROCIRURGIA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMCADASTROCIRURGIA-001:Fluxo Principal" -d ./5-results/SCR1AMCADASTROCIRURGIA-001 "3-tests/1-ATENDIMENTO/M_CADASTRO_CIRURGIA.robot"
# robot -v browser:firefox -t "SCR1AMCADASTROCIRURGIA-001:Fluxo Principal" -d ./5-results/SCR1AMCADASTROCIRURGIA-001 "3-tests/1-ATENDIMENTO/M_CADASTRO_CIRURGIA.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMCADASTROCIRURGIA-001"
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Cadastro da Cirurgia"@nprint @las
    Cadastro da Cirurgia|${dados}[TempoUltilizacao]||${dados}[Atendimento]||${dados}[TipoSanguineo]||${dados}[DataEntrada]||${dados}[DataSaida]||${dados}[DataEntradaAnestesia]||${dados}[DataSaidaAnestesia]||${dados}[DataEntradaCirurgia]||${dados}[DataSaidaCirurgia]||${dados}[DataEntradaLimpeza]||${dados}[DataSaidaLimpeza]||${dados}[ASA]||${dados}[CentroCirurgico]||${dados}[SalaCirurgica]||${dados}[EquipeMedica]||${dados}[CIDPre]||${dados}[CIDPos]|
    Cirurgia|${dados}[SubGrupoCirurgia]||${dados}[GrupoDeCirurgias]||${dados}[Cirurgia]||${dados}[PotencialDeContaminacao]||${dados}[Lateralidade]||${dados}[PrestadorCirurgiao]||${dados}[AtividadeMedica]|
    Validacao dos Dados