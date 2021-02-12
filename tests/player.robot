***Settings***
Documentation   Testando o player de paródias

Resource    ../resources/base.robot

# Gancho para tirar screenshot após a execução de cada teste
Test Teardown   Take Screenshot

***Test Cases***
Reproduzir paródias
    Open Login Page
    Login With  papito@parodify.com     pwd123
    Logout Link Should Be visible

    Click       css=a[href*=search]
    Wait for Elements state     xpath=//h2[contains(text(), "Buscar")]    visible     10

    Click       xpath=//img[contains(@src, "sertanejo.png")]/..
    Wait for Elements state     xpath=//h2[contains(text(), "Sertanejo")]    visible     10

    Click       xpath=//p[contains(text(), "Marcus e Debug")]/..
    Wait for Elements state     xpath=//h2[contains(text(), "Músicas")]    visible     10

    Click       xpath=//h2[contains(text(), "Bug de Manhã")]/../..//div[contains(@class, "play")]//a

    Get Style   xpath=//h2[contains(text(), "Bug de Manhã")]/../../..       color       equal       rgb(225, 0, 180)