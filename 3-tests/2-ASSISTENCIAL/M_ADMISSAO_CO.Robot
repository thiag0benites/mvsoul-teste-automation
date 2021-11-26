#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/O_TRANSF_CC_RPA_STEPS "3-tests\2 - ASSISTENCIAL\O_TRANSF_CC_RPA.robot"
# chrome:         robot -v browser:firefox -d ./5-results/O_TRANSF_CC_RPA_STEPS "3-tests\2 - ASSISTENCIAL\O_TRANSF_CC_RPA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/O_TRANSF_CC_RPA_STEPS "3-tests\2 - ASSISTENCIAL\O_TRANSF_CC_RPA.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/O_TRANSF_CC_RPA_STEPS "3-tests\2 - ASSISTENCIAL\O_TRANSF_CC_RPA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources//2-ASSISTENCIAL/M_ADMISSAO_CO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao


*** Variable ***
# # Suite registrada no gerenciador de dados
${suite}          m_admissao_co
# # Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMADMI-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMADMI-001:Fluxo Principal" -d ./5-results/SCR2AMADMI-001 "3-tests\2-ASSISTENCIAL/M_ADMISSAO_CO.Robot"
# robot -v browser:firefox -t "SCR2AMADMI-001:Fluxo Principal" -d ./5-results/SCR2AMADMI-001 "3-tests\ 2-ASSISTENCIAL/M_ADMISSAO_CO.Robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMADMI-001"
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Ficha Obstétrica"@nprint @las
    Acessar Atendimento |${dados}[AcessarAtendimento]|
    Inserir Data do Parto |${dados}[DataDoParto]|     ### PREENCHER DATA COM [dd/Mmm/aaaa] ###
    Acessar Tipo Parto |${dados}[TipoParto]|
    Acessar Motivo do Parto |${dados}[MotivoParto]|
    Preenche Dados Quantidade Filhos |${dados}[QtdFilhos]| e Semanas |${dados}[QtdSemanas]|
    Acessar Tipo de Anestesia |${dados}[TipoAnestesia]|
    Acesso Tela Recem Nascido> Hora do Parto|${dados}[HoraDoParto]|>Sexo|${dados}[TipoSexo]|>Numero Pulseira|${dados}[NumeroPulseira]|
    Preenche Registro Civil>Declaracao Nacido Vivo|${dados}[NascidoVivo]|>Numero Pulseira|${dados}[NumeroPulseira]|
    Preenche Apagar 1 Min|${dados}[Apgar1Min]| 5 Min|${dados}[Apgar5Min]|, Perimetro Encefalo|${dados}[PerimetroCefalico]|, Toracico|${dados}[PerimetroToracico]|, Abdominal|${dados}[PerimetroAbdominal]| e Medidas Altura|${dados}[MedidaAltura]|, Peso|${dados}[MedidaPeso]|
    Preenche Pediatra Resp |${dados}[Pediatra]|, Leito|%{dados}[TxtLeito]| E Filtro|${dados}[FiltroParto]|