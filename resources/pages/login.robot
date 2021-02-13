***Settings***
Documentation   Ações da pagina de login

***Keywords***
Open Login Page
    New Browser  #passar false para não rodar em headless, default navegador chromium e headless true
    New Page    https://parodify.herokuapp.com/users/sign_in

Login With
    [Arguments]     ${email_args}   ${pass_args}

    Fill Text   css=input[name*=email]   ${email_args}
    Fill Text   css=#user_password  ${pass_args}

    Click   css=input[value='Log in']

Alert Should Be
    [Arguments]     ${expect_arg}

    Get Text  css=.is-danger .message-body  ==  ${expect_arg}    