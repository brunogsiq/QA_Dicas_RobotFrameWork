*** Settings ***
Library     Browser


*** Test Cases ***
Example Test
    New Browser            headless=False
    New Page               https://playwright.dev
    Set Browser Timeout    00:00:30
    Get Text               h1    contains    Playwright
    Take Screenshot
    Log to console         ${EMPTY}
