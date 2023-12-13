*** Settings ***
Library             SeleniumLibrary

Test Setup          Dado que desejo acessar a pesquisar um produto na página do automationpractice
Test Teardown       Fechar o navegador


*** Variables ***
${BROWSER}      chrome
${URL}          http://www.automationpractice.com
${PRODUTO01}    Blouse


*** Test Cases ***
Caso de teste 01: Pesquisar Produto Existente
    Dado que desejo acessar a pesquisar um produto na página do automationpractice
    E ao digirar o nome do produto
    Quando clicar na opção pesquisar
    Então o produto pesquisado deve ser apresentado no site
    Fechar o navegador


*** Keywords ***
Dado que desejo acessar a pesquisar um produto na página do automationpractice
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

E ao digirar o nome do produto
    Input Text    name=search_query    ${PRODUTO01}

Quando clicar na opção pesquisar
    Sleep    05
    click element    name=submit_search

Então o produto pesquisado deve ser apresentado no site
    Sleep    05
    Get Text    center_column > h1 > span.lighter
    Should Be True    BlOUSE

Fechar o navegador
    Close Browser
