Feature: Visitor
  
  @wip
  Scenario: A visitor sees a list of travellers
    Given I am on the homepage
      And some travellers exist
    When I press the "Bucket Lists" link
    Then I should see a list of travellers