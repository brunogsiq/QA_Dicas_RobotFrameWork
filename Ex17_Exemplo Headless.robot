*** Settings ***
Library          SeleniumLibrary
Library          DebugLibrary
Test Setup       Abrir o Browser
Test Teardown    Fechar o Browser

*** Variables ***
${PRODUTO}           mug
${TITULO_PRODUTO}    Ruby on Rails Mug

*** Test Cases ***
Interagindo com uma pagina web
    Dado que o cliente pesquise o produto  ${PRODUTO}
    Quando acessar a pagina do produto no resultado da pesquisa
    ${RETORNO}  Entao deve visualizar  ${TITULO_PRODUTO}
    log to console  O titulo do produto é: ${RETORNO}

*** Keywords ***
Abrir o Browser
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Create Webdriver    Chrome    chrome_options=${chrome_options}
    Set Window Size  1024  768
    Go To          https://learningprime.com.br


Fechar o Browser
    Close Browser

Dado que o cliente pesquise o produto
    [Arguments]   ${PRODUTO_PESQUISA}=
    input text                      id=keywords  ${PRODUTO_PESQUISA}
    click element                   css=#search-bar > form > input[type=submit]:nth-child(4)

Quando acessar a pagina do produto no resultado da pesquisa
    click element                   xpath=/html/body/div/div/div/div/ul/li

Entao deve visualizar
    [Arguments]   ${TITULO}=
    wait until element is visible       class=product-title  3s
    Element Text Should Be              class=product-title  ${TITULO}
    ${TEXTO_NA_TELA}  get text          class=product=title
    [Return]          ${TEXTO_NA_TELA}