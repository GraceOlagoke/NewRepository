Feature: Wishlist

  To add some products I would like ones available, I need to add them to wish list

  Scenario: create wish list for myself

    Given I navigate to the website
    When I click on Wishlist tab
    And I login to the website
    And click on create wish list
    And I choose wishlist for myself
    And I enter my name
    And I enter the occassion
    And I enter a future date for the occassion
    And I select the type of product I want
    And I enter the description of the product
    And I check the private/public button
    And I upload the image
    And I checked the captcha
    And I click on save
    Then my wish list is created


  Scenario: create wish list for a friend

    Given I navigate to the website
    When I click on Wishlist tab
    And I login to the website
    And click on create wish list
    And I choose wishlist for a friend
    And I select a friend
    And I enter my name
    And I enter the occassion
    And I enter a future date for the occassion
    And I select the type of product I want
    And I enter the description of the product
    And I check the private/public button
    And I upload the image
    And I checked the captcha
    And I click on save
    Then my wish list is created


  Scenario: create wish list with invalid Event Date

    Given I navigate to the website
    When I click on Wishlist tab
    And I login to the website
    And click on create wish list
    And I choose wishlist for myself
    And I enter my name
    And I enter the occassion
    And I enter a past date for the occassion
    And I select the type of product I want
    And I enter the description of the product
    And I check the private/public button
    And I upload the image
    And I checked the captcha
    And I click on save
    Then my wish list is not created





  Scenario: All Wishlists

    Given I navigate to the website
    When I click on Wishlist tab
    And I login to the website
    And I click on All Wish Lists
    Then all created wish lists are seen



  Scenario: All Wishlists created by friends

    Given I navigate to the website
    When I click on Wishlist tab
    And I login to the website
    And I click on All Wish Lists
    Then all created wish lists are seen



  Scenario: All Wishlists created for myself

    Given I navigate to the website
    When I click on Wishlist tab
    And I login to the website
    And I click on Wish Lists created for myself
    Then all lists created for myself are seen


  Scenario: wish lists shared with me

    Given I navigate to the website
    When I click on Wishlist tab
    And I login to the website
    And I click on Wish Lists shared with me
    Then all lists created for myself are seen


  Scenario: wish lists shared with friends

    Given I navigate to the website
    When I click on Wishlist tab
    And I login to the website
    And I click on Wish Lists shared with friends
    Then all lists created for myself are seen




