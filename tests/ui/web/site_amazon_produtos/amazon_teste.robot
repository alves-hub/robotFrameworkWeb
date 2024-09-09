# *** Settings ***
# Documentation   Esses suite  traz configuracoes  iniciais dos testes 
# Resource    ../resources/pages/home.robot
# Resource    ../resources/pages/produto.robot
# Resource     ../resources/resources.robot

    
# # Rodar uma keyword antes e depois dos tests 
# Suite Setup        Carregar ScreenObject
# Test Setup         Abrir e maximizar navegador
# Test Teardown      Fechar navegador

# # Rodar suite antes e depois dos tests 
#     #Suite Setup
#     #Suite Teardown


# *** Test Cases ***

# caso de teste 01 - Acesso ao menu "Eletronico
#     [Documentation]  Esses testes verificar o menu eletronico do site amazon.com.br
#     ...              e verifica categoria computadores informatica.
#     ...              Lista Opcoes Menu: pelo @data-csa-c-content-id
#     ...                nav_cs_electronics  = eletronicos       
#     ...                nav_cs_books = livros 
#     ...                nav_cs_music = Musica
#     ...                nav_cs_primelink_nonmember = prime
#     ...                nav_cs_bestsellers = mais vendidos

#     # [Tags]    @menus
    
#     Acessar a home page amazon.com.br
#     Entrar no menu "nav_cs_electronics"
#     Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
#     Verificar se aparece a frase "Eletrônicos e Tecnologia"
#     #Verificar se aparece a categoria "Computadores e Informática"
#     Verificar se aparece a categoria "Tablets"



# # Caso de teste 02 - Pesquisa de um produto
#     # [Documentation]  Esses testes verificar a busca de um produto

#     # [Tags]    @busca_produtos
#     # Acessar a home page do site Amazon.com.br 
#     # Digitar o nome de produto "Xbox Series S" no campo de pesquisa
#     # Clicar no botão de pesquisa 
#     # Validar o resultado da pesquisa,listando o produto pesquisado (conferir um)




