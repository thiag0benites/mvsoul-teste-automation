##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Triagem de Paciente
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_TRIAGEM_PAGE.robot
Resource    ../2-ASSISTENCIAL/M_USUUNID_STEPS.robot

*** Variable ***

*** Keywords ***
Pesquisar Paciente |${CdPaciente}| |${MsgAtendimento}|
    Preencher Campo                    ${CampoCdPaciente}                 ${CdPaciente}
    Click Elemento por titulo          Executar Consulta
    Valida Mensagem                    ${MensagemToast}                   ${MsgAtendimento}
    Click no Item                      ${BotaoOK} 

Preencher Campos Admissao |${QueixaPrincipal}|
    Marcar Checkbox |${CbPrimeiroAtend}|
    Preencher Campo                    ${CampoQueixaPrincipal}            ${QueixaPrincipal}

Preencher Campos Doencas Cronicas e Alergias |${Diabetes}| |${Asma}|
    Preencher Campo                    ${CampoDiabetes}                   ${Diabetes}
    Preencher Campo                    ${CampoAsma}                       ${Asma}

Preencher Campos Sinais Vitais |${PAInicial}| |${PAFinal}| |${Pulso}| |${Temperatura}|
    Preencher Campo                    ${CampoPAInicial}                  ${PAInicial}  
    Preencher Campo                    ${CampoPAFinal}                    ${PAFinal}
    Preencher Campo                    ${CampoPulso}                      ${Pulso}
    Preencher Campo                    ${CampoTemperatura}                ${Temperatura}

### Keyword para retornar massa de dados para status inicial do teste
Excluir Dados de Triagem
    Click no Item                      ${CampoQueixaPrincipal}
    Click Elemento por titulo          Apagar
    Clicar Botao Salvar