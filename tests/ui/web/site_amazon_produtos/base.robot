*** Settings ***
Library    SeleniumLibrary
Library     Collections
Library     String 
Library     BuiltIn
Library     ../../../../lib/helperScreenObject.py



*** Variables ***
${BROWSER}                chrome 
${URL}                    https://www.amazon.com.br/

*** Keywords ***

Abrir e maximizar navegador
    Open Browser    browser= ${BROWSER} 
    Maximize Browser Window 
    Go To    url= ${URL} 
    Sleep    time_= 15
        
Fechar navegador
    Capture Page Screenshot
    Close Browser


Carregar ScreenObject 
    
    ${home}     get_screen_object    home

    Set Suite Variable      ${home}