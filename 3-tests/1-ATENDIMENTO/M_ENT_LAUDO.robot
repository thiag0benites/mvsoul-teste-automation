#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Teste da tela Entrada dos Produtos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO/ "3-tests/1-ATENDIMENTO/M_ENT_LAUDO_STEPS.robot
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO/ "3-tests/1-ATENDIMENTO/M_ENT_LAUDO_STEPS.robot
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO/ "3-tests/1-ATENDIMENTO/M_ENT_LAUDO_STEPS.robot
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO/ "3-tests/1-ATENDIMENTO/M_ENT_LAUDO_STEPS.robot
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/M_ENT_LAUDO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessao
# Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            m_ent_laudo
# Recebe dados do gerenciador
${dados}

*** Test Case ***

SMF-8024:Gerar Protocolo de entrega de Laudo do exame
# robot -v browser:chrome -t "SMF-8024:Gerar Protocolo de entrega de Laudo do exame" -d ./5-results/SMF-8024 "3-tests/1-ATENDIMENTO/M_ENT_LAUDO.robot"
# robot -v browser:firefox -t "SMF-8024:Gerar Protocolo de entrega de Laudo do exame" -d ./5-results/SMF-8024 "3-tests/1-ATENDIMENTO/M_ENT_LAUDO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-8024"
    Acessar a tela "Diagnostico e Terapia>Diagnóstico por Imagem>Atendimentos>Entrega de Laudos"@print @las
    Preencher Informacoes "Responsavel|${dados}[Responsavel]|", "Setor Executante|${dados}[SetorExecutante]|", "Observacoes|${dados}[Observacoes]|"
    Preenche Consulta de Laudos "Laudo|${dados}[Laudo]|", "Mensagem Sucesso|${dados}[MsgSucesso]|"