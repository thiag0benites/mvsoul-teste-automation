#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Teste da tela Entrada dos Produtos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO/ "3-tests/1-ATENDIMENTO/M_AVICIR.robot
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO/ "3-tests/1-ATENDIMENTO/M_AVICIR.robot
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO/ "3-tests/1-ATENDIMENTO/M_AVICIR.robot
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO/ "3-tests/1-ATENDIMENTO/M_AVICIR.robot
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/M_AVICIR_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessao
# Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            m_avicir
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SRC1MAVICIR-001:Fluxo Principal
# robot -v browser:chrome -t "SRC1MAVICIR-001:Fluxo Principal" -d ./5-results/SRC1MAVICIR-001 "3-tests/1-ATENDIMENTO/M_AVICIR.robot"
# robot -v browser:firefox -t "SRC1MAVICIR-001:Fluxo Principal" -d ./5-results/SRC1MAVICIR-001 "3-tests/1-ATENDIMENTO/M_AVICIR.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SRC1MAVICIR-001"
    Acessar a tela pela busca |${dados}[AcessoTela]||${dados}[AcessoTela]|@print @las
    Preenche Aviso Cirurgia "Data Prev Internacao|${dados}[DataPrevInter]|", "Tempo Prev|${dados}[TempoPrev]|", "Atendimento|${dados}[Atendimento]|", "Centro Cirurgico|${dados}[CentroCir]|", "Sala Cirurgica|${dados}[SalaCir]|"
    Preenche Cirurgia A Serem Realizadas "Codigo Cirurgia|${dados}[CodCir]|", "Observacao|${dados}[Observação]|"
    Preenche Prestadores Cirurgia "Codigo|${dados}[Codigo]|", "Atividade Medica|${dados}[AtvMedica]|", "Mensagem Alerta|${dados}[MsgAlerta]|"