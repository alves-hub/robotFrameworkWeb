 # robotcode: ignore
*** Settings ***
Library    SeleniumLibrary
Resource   ../base.robot

*** Variables ***
${BROWSER}                chrome 
${URL}                    https://www.amazon.com.br/
# ${MENU_ELETRONICO}        xpath=//a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
# ${TITULO_PAGINA}          xpath=//title[contains(.,'Eletrônicos e Tecnologia | Amazon.com.br')]
# ${EDITEXT}                xpath=//input[contains(@type,'text')]
# ${BTN_PESQUISAR}          id= nav-search-submit-button
# ${TITLE_PESQUISA}         Amazon.com.br : Xbox Series S
# ${BTN_PRODUTO}            xpath=//img[@data-image-index='3']

# ${TEXT_TITLE}             Eletrônicos e Tecnologia | Amazon.com.br
# ${SUB_TITLE}              Eletrônicos e Tecnologia
# ${CATEGORIA}              Computadores e Informática


*** Keywords ***

Verificar se o título da página ficas "${TITLE}"
    Wait Until Page Contains        ${TITLE}
    Title Should Be    ${TITLE}

Verificar se aparece a frase "${SUB_TITLE}"
    Wait Until Page Contains        ${SUB_TITLE}

Verificar se aparece a categoria "${CATEGORIA}"
    Element Should Be Visible    locator=//a[@aria-label='${CATEGORIA}']


# GHEKING BDD STEPS

o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br" 
     Verificar se o título da página ficas "Eletrônicos e Tecnologia | Amazon.com.br"

o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    Verificar se aparece a frase "Eletrônicos e Tecnologia"

a categoria "Computadores e Informática" deve ser exibida na página
    Verificar se aparece a categoria "Tablets"


pesquisar pelo "${produtos}"
# {DADO_PESQUISA}
    Click Element     ${home.EDITEXT} 
    Input Text        ${home.EDITEXT}    ${DADO_PESQUISA}
    Click Element     ${home.BTN_PESQUISAR}

o título da página deve ficar "${TITLE_PESQUISA}"
    Title Should Be                  ${TITLE_PESQUISA} 
    Wait Until Page Contains         ${TITLE_PESQUISA} 

um produto da linha "Xbox Series S" deve ser mostrado na página
    Wait Until Element Is Visible        ${home.BTN_PRODUTO} 