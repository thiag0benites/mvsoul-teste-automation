#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela M_CALC_DEPREC - Calculo da Depreciação do Bem
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_CALC_DEPREC "3-tests\4-MATERIAIS\M_CALC_DEPREC.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_CALC_DEPREC "3-tests\4-MATERIAIS\M_CALC_DEPREC.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_CALC_DEPREC.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_CALC_DEPREC.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../2-pages/4-MATERIAIS/M_CALC_DEPREC__PAGE.robot
Resource            ../../1-resources/4-MATERIAIS/M_CALC_DEPREC_STEPS.robot
Resource            ../../Config.robot


### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}           
# Recebe dados do gerenciador
${dados}

*** Test Case ***
MCALCDEPREC-001:Fluxo Principal
# robot -v browser:chrome -t "MCALCDEPREC-001:Fluxo Principal" -d ./5-results/MCALCDEPREC-001 "3-tests/4-MATERIAIS/M_CALC_DEPREC.robot"
# robot -v browser:firefox -t "MCALCDEPREC-001:Fluxo Principal" -d ./5-results/MCALCDEPREC-001 "3-tests/4-MATERIAIS/M_CALC_DEPREC.robot"
    #${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "MCALCDEPREC-001"
    Acessar a tela "Materiais e Logística>Patrimônio>Depreciação>Cálculo da Depreciação do Bem"@nprint @las
    #Validar Acesso a Tela |NomeTela|
    Preencher o campo |Mês/Ano geração|
    Clicar no botao [Gerar depreciação]
    Clicar no botao [Desfazer depreciações]
    Clicar no botao Sim
    Validar mensagem
    