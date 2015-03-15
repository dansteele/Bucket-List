Feature: Visitor
  
  Scenario: A visitor sees a list of travellers
    Given I am on the homepage
      And some travellers exist
    When I press the "Bucket Lists" link
    Then I should see a list of travellers

  @wip
  Scenario: A visitor can see the a traveller's bucket list
    Given some travellers exist
      And these travellers have activities at some destinations
      And I am on the "profiles" page
    When I click on the first traveller result
    Then I should see that traveller's public Bucket List
