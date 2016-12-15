Feature: As an user , I want to search something in Search engine
  Scenario:Search something in Search engine

    Given I am on "<search_engine_website>"
    When I search for "<the_keyword>"
    Then I should see a link to "<the_page>"
    When I click on "<the_page>"
    Then I should see "<expected_section>"

  Examples:
      |search_engine_website |the_keyword                                    |the_page                           |expected_section                                   |
      |https://www.google.com|the meaning of life the universe and everything|Wikipedia article for the number 42|Mathematics                                        |
      |https://www.bing.com  |why is rumy gone                               |knowyourmeme.com                   |Pirates of the Caribbean: Curse of the black Pearl |
      |https://duckduckgo.com|                                               |Learn More                         |Take back your privacy!                            |







