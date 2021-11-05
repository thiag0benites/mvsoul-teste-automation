##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Liberação e Interdição de Leitos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoLeito}                           xpath=//div[@data-member="CD_LEITO"]
${CampoLeitoEdit}                       xpath=//input[contains(@aria-labelledby, "Leito_col0")]
${CampoOcupacao}                        xpath=//div[@data-member="TP_OCUPACAO"]
${BotaoListaOcupacao}                   xpath=//div[contains(@aria-labelledby, "Leito_col6")]/div/button
${ListaOcupacao}                        xpath=//div[contains(@aria-labelledby, "Leito_col6")]/div/input