#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Teste da tela M_ENTREGA_LAB
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ENTREGA_LAB.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ENTREGA_LAB.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ENTREGA_LAB.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ENTREGA_LAB.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_ENTREGA_LAB_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_entrega_lab
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMENTREGALAB-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMENTREGALAB-001:Fluxo Principal" -d ./5-results/SCR2AMENTREGALAB-001 "3-tests/2-ASSISTENCIAL/M_ENTREGA_LAB.robot"
# robot -v browser:firefox -t "SCR2AMENTREGALAB-001:Fluxo Principal" -d ./5-results/SCR2AMENTREGALAB-001 "3-tests/2-ASSISTENCIAL/M_ENTREGA_LAB.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMENTREGALAB-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher o campo pedido |${dados}[pedido]|
    Pesquisar exames 
    Marcar checkbox de entrega na tabela 
    Gerar protocolo
    Preencher os campos para a geracao do protocolo |${dados}[tipoResponsavel]|,|${dados}[nomeResponsavel]|,|${dados}[dataRegistro]|,|${dados}[observacao]|,|${dados}[orgaoEmissor]|,|${dados}[cpf]|,|${dados}[usuarioResponsavel]|
    Clicar em 6-Confirmar 
    Verificar se o sistema gerou o protocolo 
