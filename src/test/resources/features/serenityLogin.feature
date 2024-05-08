#Autor: Edwin Quintero
#language:en

@regression
Feature: login test

  Background:
    Given the user is on the serenity demo page

  @successlogin
  Scenario Outline: testing the successful login
    When attempts to log in
      | user   | pass   |
      | <user> | <pass> |
    Then validate the text on screen <message>
    Examples:
      | user  | pass     | message   |
      | admin | serenity | Dashboard |
