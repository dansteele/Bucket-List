Feature: Commenting

  @wip
  Scenario: A traveller can comment on another traveller's bucket list
    Given some travellers exist
      And I am a traveller
      And they have signed in
      And I press the "Bucket Lists" link
      And I click on the first traveller result
    When I fill in the comment form
      And I press the "Add comment" button
    Then I should see my comment on the page
