*** Settings ***
Library     SeleniumLibrary
Library     DebugLibrary

*** Test Cases ***
Caso de teste 01: Pesquisar BLOUSE
    Abrir o navegador
    Pesquisar o produto BLOUSE
    Verificar que o produto "BLOUSE" foi listado em resultados
    Fechar o navegador

Caso de teste 02: Pesquisar DRESS
    Abrir o navegador
    Pesquisar o produto "DRESS"
    Verificar que o produto DRESS foi listado em resultados
    Fechar o navegador

Caso de teste 03: Pesquisar T-Shirts
    Abrir o navegador
    Pesquisar o produto "T-SHIRTS"
    Verificar que o produto T-SHIRTS foi listado em resultados
    Fechar o navegador


*** Keywords ***
Abrir o navegador
    Open Browser    http://automationpractice.com    chrome

Pesquisar o produto ${ITEM}
    Debug                                                                    #Para voltar ao teste é necessário ir no terminar e inserir exit
    Input Text    id=search_query_top    ${ITEM}
    Click Element    class=btn.btn-default.button-search

Verificar que o produto ${ITEM} foi listado em resultados
    Element Text Should Be    //*[@id="center_column"]/h1/span[1]    ${ITEM}

Fechar o navegador
    Close Browser
