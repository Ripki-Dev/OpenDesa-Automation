Feature: Login OpenDesa Admin Page

  Background: I go to login page
    Given User go to path "/index.php/siteman"
    When I check show password "Tamplikan kata sandi"
    Then validate is in Admin Login Page

  Scenario: Login as admin with valid account
    When I enter username "admin" and password "sid304"
    And I click button login "Masuk"
    Then I navigated to login page

  Scenario: Login with invalid account in Admin page
    When I enter username "Wrong123" and password "It'sWrong"
    And I click button login "Masuk"
    Then validate failed message

  Scenario: Try SQL Injection in Admin page
    When I enter username '" or ""="' and password '" or ""="'
    And I click button login "Masuk"
    Then validate failed message

  Scenario: Only click button login in Admin page
    When I click button login "Masuk"
    Then validate failed message