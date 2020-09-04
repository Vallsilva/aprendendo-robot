*** Settings ***
Library      Selenium
*** Variables ***
${URL}       http://automationpractice.com/
${BROWSER}   chrome
*** Test Case ***
Cenário de teste 01: Pesquisar produto existente
    Dado que estou na página home di site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na página de resultado da busca

Cenário de teste 02: Pesquisar produto não existente
    Acessar a pagina home do site
    Conferir se a página home foi exibida
    Digitar nome do produto "itemNãoExistente" no campo de pesquisa
    Clicar no botão Pesquisar
    Conferir mensagem de erro "No results were found for your search "produtoNãoExistente""

*** Key words ***