#################################################################################################################################################################
# Autor: Marcio Nascimento
# Decrição: Teste da tela Revisão de Cirurgias
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/SCR4M-001 "3-tests/4-MATERIAIS/M_DEVPAC.robot"
# firefox: robot -v browser:firefox -d ./5-results/SCR4M-001 "3-tests/4-MATERIAIS/M_DEVPAC.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SCR4M-001 "3-tests/4-MATERIAIS/M_DEVPAC.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR4M-001 "3-tests/4-MATERIAIS/M_DEVPAC.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource                  ../../2-pages/4-MATERIAIS/M_DEVPAC_Pages.robot
Resource                  ../../1-resources/4-MATERIAIS/M_DEVPAC_Steps.robot
Resource                  ../../Config.robot
Resource                  ../../1-resources/auxiliar/Genericos.robot
Resource                  ../../1-resources/bd/BancoDados.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup               Nova sessao
# Suite Teardown            Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup                Nova sessao
# Test Teardown             Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}             m_devpac
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4M-001:Devolucao Paciente Teste RPA
# robot -v browser:chrome -t "SCR4M-001:Devolucao Paciente Teste RPA" -d ./5-results/SCR4M-001 "3-tests/4-MATERIAIS/M_DEVPAC.robot"
# robot -v browser:firefox -t "SCR4M-001:Devolucao Paciente Teste RPA" -d ./5-results/SCR4M-001 "3-tests/4-MATERIAIS/M_DEVPAC.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4M-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Movimentações>Devoluções>De Pacientes"@nprint @las
    Selecionar campo estoque e preencher com "${dados}[Pesq_Estoque]"
    Selecionar campo consulta de atendimento e filtrar pelo nome "${dados}[Nome]"
    Selecionar campo motivo e filtrar pelo nome
    Preencher campo de Observacoes com "${dados}[Observacao]"
    Preencher campo com Codido de Barra "${dados}[Cod_Barra]"
    Preencher campo produto "${dados}[Produto1]" e Qntde Recebida "${dados}[Qntde_Recebida]"
    Preencher campos da Linha2 "${dados}[Produto_Linha2]" e Lote "${dados}[Lote_DevProd]" e Unidade "${dados}[Unidade]" e Qntde Recebida "${dados}[Qntde_Recebida2]" 

