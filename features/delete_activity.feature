Feature: Delete Activity

  @wip @javascript
  Scenario: A traveller can delete their own activities
    Given some destinations with some bucketlist items
      And a traveller who has added an item to their bucketlist
      And they have signed in
      And they add an activity
    When they see their activity under the relevant destination
      And they press the "Delete Activity" link
    Then the activity disappears from the page
      And the traveller no longer has that activity