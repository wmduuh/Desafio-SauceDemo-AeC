*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${URL}           https://www.saucedemo.com/
${BROWSER}       edge

*** Test Cases ***
Cenário: Comprar o casaco usando Edge
    [Documentation]    Teste de compra via Edge
    Abrir o site no Edge
    Fazer login com usuario padrao fornecido pela plataforma
    Colocar o casaco no carrinho
    Preencher dados de entrega
    Validar se finalizou

*** Keywords ***
Abrir o site no Edge
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Fazer login com usuario padrao fornecido pela plataforma
    Input Text        id=user-name    standard_user
    Input Password    id=password     secret_sauce
    Click Button      id=login-button

Colocar o casaco no carrinho
    # Usando o ID específico do casaco Fleece Jacket
    Wait Until Element Is Visible    id=add-to-cart-sauce-labs-fleece-jacket    15s
    Click Button                     id=add-to-cart-sauce-labs-fleece-jacket
    Click Element                    class=shopping_cart_link

Preencher dados de entrega
    Click Button      id=checkout
    Input Text        id=first-name    Jose
    Input Text        id=last-name     Sousa
    Input Text        id=postal-code   58170000
    Click Button      id=continue
    Click Button      id=finish

Validar se finalizou
    Element Should Contain    class=complete-header    Thank you for your order!
    Close Browser