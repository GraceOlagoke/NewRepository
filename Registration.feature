Feature: Registration
  in order to use www.giftrete.com, as a new user, I need to register

  Background:
    Given I navigate to the website
    When I click on register



  @valid @smoke
  Scenario: Valid registration


    And I enter my first name
    And I enter my last name
    And I enter my email address
    And I enter my password
    And I confirm my password
    And I checked the captcha
    And I click on Register button
    Then I am registered



@invalid first_name
  Scenario: Invalid first name for registration


    And I enter my first name as "12345"
    And I enter my last name as "Deji"
    And I enter my email address
    And I enter my password
    And I confirm my password
    And I checked the captcha
    And I click on Register button
    Then I should not be registered

@invalid last_name
  Scenario: Invalid last name for registration


    And I enter my first name as "Teddy"
    And I enter my last name as "4567"
    And I enter my email address
    And I enter my password
    And I confirm my password
    And I checked the captcha
    And I click on Register button
    Then I should not be registered

@invalid email
  Scenario: Invalid email address for registration


    And I enter my first name
    And I enter my last name
    And I enter my email address as "dejihotmail@com"
    And I enter my password
    And I confirm my password
    And I checked the captcha
    And I click on Register button
    Then I should not be registered

@invalid password
  Scenario Outline: Invalid confirm password for registration


    And I enter my first name
    And I enter my last name
    And I enter my email address
    And I enter my password as "password"
    And I confirm my password as "password2"
    And I checked the captcha
    And I click on Register button
    Then I should not be registered

    Examples:
    |password|passwprd2|
    |Dejino1|Dejino2
    |Dejipassword1|Dejipassword2|


  @invalid
  Scenario: Invalid registration: captcha not checked

    And I enter my first name
    And I enter my last name
    And I enter my email address
    And I enter my password
    And I confirm my password
    And I did not check the captcha
    And I click on Register button
    Then I should not be registered