*** Settings ***
Library      Selenium
*** Variables ***
${URL}       http://automationpractice.com/
${BROWSER}   chrome
*** Test Case ***
Caso de teste 01: Pesquisar produto existente
    Acessar a pagina home do site
    Conferir se a página home foi exibida
    Digitar nome do produto "Blouse" no campo de pesquisa
    Clicar no botão Pesquisar
    Conferir se o produto "Blouse" foi listado no site

Caso de teste 02: Pesquisar produto não existente
Acessar a pagina home do site
    Conferir se a página home foi exibida
    Digitar nome do produto "itemNãoExistente" no campo de pesquisa
    Clicar no botão Pesquisar
    Conferir mensagem de erro "No results were found for your search "produtoNãoExistente""

*** Key words ***


