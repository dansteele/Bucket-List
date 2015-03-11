Feature: Destinations

  @javascript
  Scenario: A traveller adds a destinations to their bucketlist
    Given some destinations with some bucketlist items
      And a traveller who has added an item to their bucketlist
      And they have signed in
    When they add a destination
    Then it should appear on the page

  @wip @javascript
  Scenario: A traveller adds an activity to a destination on their bucket list
    Given some destinations with some bucketlist items
      And a traveller who has added an item to their bucketlist
      And they have signed in
    When they add an activity
    Then they see their activity under the relevant destination
      And the activity is stored in the traveller's bucket list