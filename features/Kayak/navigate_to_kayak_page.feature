@regression_tests

Feature: Validate element created dropdown column

  Scenario: Navigate to the Kayak home page and validate principal elements
    Given I navigate to the kayak main page
    Then I should be in the "home" page
    And The page "should" contain the next elements
      | name          | type   |
      | login         | button |
      | origin        | input  |
      | destiny       | input  |
      | date          | input  |
      | search_travel | button |

  Scenario: Validate URL of Home page
    Given I navigate to the kayak main page
    Then I should be in the "home" page
    And The url page should be equal to the next "https://www.kayak.com.br/" url

  Scenario Outline: Navigate through each of the right menu options and validate that each page opens
    Given I navigate to the kayak main page
    Then I should be in the "home" page
    When I click on the "<menu_option>" dropdown
    Then The url page should be equal to the next "<expected_url>" url

    Examples:
      | menu_option | expected_url                          |
      | voos        | https://www.kayak.com.br/flights      |
      | hospedagens | https://www.kayak.com.br/stays        |
      | carros      | https://www.kayak.com.br/cars         |
      | pacotes     | https://www.kayak.com.br/packagetours |

  Scenario Outline: Navigate between countries and validate the URL
    Given I navigate to the kayak main page
    Then I should be in the "home" page
    When I navigate to the "<url>" URL
    Then The url page should be equal to the next "<url>" url

    Examples:
      | url                       |
      | https://www.kayak.com.my/ |
      | https://www.kayak.com.pr/ |
      | https://www.kayak.com.br/ |
