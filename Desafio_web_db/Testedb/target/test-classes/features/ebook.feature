#Author: arqvimedes@gmail.com


@renner
Feature: Acessar Ebook
  Eu como usuario quero realizar a busca de um livro

  @busca
  Scenario: Acessar ebook da livraria
	  Given que esteja na home "https://demoqa.com/login"
	  When Preencher o User name "Teste Rennerdb"
    And digitar um password "Teste@12345"
    And clicar em login
    And acessar Livraria
    And Pesquisar Livro "JavaScript"
    And selecionar Livro "Programming JavaScript Applications"
    Then valido codigo e autor
    And adicionar Livro
    And retornar ao perfil 
    And checar livro na cesta


