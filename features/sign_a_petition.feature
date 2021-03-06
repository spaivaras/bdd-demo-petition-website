Feature: Sign a petition
  In order to express my support towards initiative, which I like
  As a concerned citizen
  I want to sign a petition online

  Scenario: view a petition
    When I go to homepage
    Then I should see "Doughnuts should be banned because they are too fascinating"
    And I should see signing form

  Scenario: sign a petition
    Given I am on homepage
    When I sign a petition as "Chuck Norris"
    Then I should see "Thank you for your support"

  Scenario: view signers on petition page
    Given I am on homepage
    And the following people already signed petition:
      | name               |
      | Bruce Willis       |
      | Sylvester Stallone |
    When I sign a petition as "Chuck Norris"
    Then I should see these signers:
      | name               |
      | Bruce Willis       |
      | Sylvester Stallone |
      | Chuck Norris       |

  Scenario: sign without a name
    Given I am on homepage
    When I sign a petition as ""
    Then I should see "No anonymous signers, please"