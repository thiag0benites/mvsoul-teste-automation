##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Produtos do Estoque
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${ListaParametro}                        xpath=//input[@id="cgStackControl_ac"]
${CampoSolicComprasSerie}                xpath=//input[@id="snAutEmSerieSolicCompra_ac"]
${CampoAtvIntvItemPresc}                 xpath=//input[@id="snAtivaInativaItemPresc_ac"]
${CampoCadProdMestre}                    xpath=//input[@id="snMestreFormula_ac"]
${CampoBloqSolicAvulsa}                  xpath=//input[@id="snBloqSolsaiProPac_ac"]
${CampoSitUsuario}                       xpath=//input[@id="snChkEstoqueDestino_ac"] 





