Feature: Sign in
  
  @wip
  Scenario: A traveller logs in and sees only their own destinations and to-do items
    Given some destinations with some bucketlist items
      And a traveller who has added an item to their bucketlist
      And I am on the sign in page
    When I sign in
    Then I should see "Welcome Back" in the flash notice
      And I should see only my own bucketlist