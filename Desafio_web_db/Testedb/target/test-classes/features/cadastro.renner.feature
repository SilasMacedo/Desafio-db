#Author: arqvimedes@gmail.com

@renner
Feature: Preencher formulario
  Eu como usuario quero preencher o formulario para realizar cadastro
  
  Background: Acessar a home
  Given que esteja na home "https://demoqa.com/login"
  And Acessar o formulario
  When Preencher o first name "Teste"
  And Prencher o last name "Rennerdb"
  And Preencher o User name "Teste Rennerdb"
    
  @negativo
  Scenario: Cadastro com password numerico

    And digitar um password numerico "12345"
    And clicar em registrar
    Then valido a mensagem de erro
   

  @positivo
  Scenario Outline: Cadastro com sucesso

    And digitar um password "Teste@12345"
    And clicar em registrar
    Then valido a mensagem de sucesso
  