***Settings***
Documentation   Testando o player de paródias

Resource    ../resources/base.robot

# Gancho para tirar screenshot após a execução de cada teste
Test Teardown   Take Screenshot

***Test Cases***
Reproduzir paródia Bug de Manhã
    Open Login Page
    Login With  papito@parodify.com     pwd123
    Logout Link Should Be visible
    Go To Search Page
    Go To Sertanejo Categorie
    Open Album From  Marcus e Debug
    Play Song   Bug de Manhã
    Song Should Be Playing  Bug de Manhã