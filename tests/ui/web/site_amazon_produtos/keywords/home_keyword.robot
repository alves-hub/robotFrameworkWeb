 # robotcode: ignore

*** Settings ***
Library        SeleniumLibrary
Resource   ../base.robot

*** Variables ***
# ${URL}                    https://www.amazon.com.br/
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

Acessar a home page amazon.com.br
#     Go To    url= ${URL} 
     Wait Until Element Is Visible      ${home.MENU_ELETRONICO}

Entrar no menu "${MENU_ELETRONICOs}"
    Click Element            //a[contains(@data-csa-c-content-id,'${MENU_ELETRONICOs}')]

Verificar se o título da página fica "${TITLE}"
    Wait Until Page Contains        text=${TITLE} 
    Title Should Be    title=${TITLE}


# GHEKING BDD STEPS
estou na home page da Amazon.com.br
    Acessar a home page amazon.com.br

acessar o menu "Eletrônicos"
     Entrar no menu "nav_cs_electronics"