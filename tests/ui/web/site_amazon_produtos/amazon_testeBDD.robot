*** Settings ***
Documentation   Esses suite  traz configuracoes  iniciais dos testes
Resource    ../site_amazon_produtos/keywords/home_keyword.robot
Resource    ../site_amazon_produtos/keywords/produto_keyword.robot
Resource     BDD.robot
Suite Setup    Carregar ScreenObject    


# Rodar uma keyword antes e depois dos tests 
Test Setup         Abrir e maximizar navegador
Test Teardown      Fechar navegador

*** Test Cases ***
 
Scenario: caso de teste 01 - Acesso ao menu "Eletronico
    [Documentation]  Esses testes verificar o menu eletronico do site amazon.com.br
    ...              e verifica categoria computadores informatica.
    ...                Lista Opcoes Menu: pelo @data-csa-c-content-id
    ...                nav_cs_electronics  = eletronicos       
    ...                nav_cs_books = livros 
    ...                nav_cs_music = Musica
    ...                nav_cs_primelink_nonmember = prime
    ...                nav_cs_bestsellers = mais vendidos

    [Tags]    @menus

    Given estou na home page da Amazon.com.br
    When acessar o menu "Eletrônicos"
    Then o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br" 
    And o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    And a categoria "Computadores e Informática" deve ser exibida na página



Scenario: Caso de teste 02 - Pesquisa de um produto
    [Documentation]  Esses testes verificar a busca de um produto
    [Tags]    @busca_produtos

    FOR      ${produto} IN
    ...      
    
    END
    
    Given estou na home page da Amazon.com.br
    When pesquisar pelo ${produtos}
    # "produtos"
    Then o título da página deve ficar "Amazon.com.br : Xbox Series S"
    And um produto da linha "Xbox Series S" deve ser mostrado na página


Scenario: massa produtos
    [Template]  Scenario: Caso de teste 02 - Pesquisa de um produto

    # produtos
    Xbox Series S
    Xbox Series D 
    curly@example.com

# Feature: Login as Multiple Users

#   Scenario Outline: User login with different credentials
#     Given the user is on the login page
#     When the user enters username "<username>" and password "<password>"
#     And clicks on the login button
#     Then the user should be logged in

    # Examples:
    #   | username | password |
    #   | user1    | pass1    |
    #   | user2    | pass2    |




