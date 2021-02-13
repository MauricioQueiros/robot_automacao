***Settings***
Documentation       Ações da Página de Categoria

***Keywords***
Open Album From
    [Arguments]     ${artist_name}

    Click       xpath=//p[contains(text(), "${artist_name}")]/..
    Wait for Elements state     xpath=//h2[contains(text(), "Músicas")]    visible     10