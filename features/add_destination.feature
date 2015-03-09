Feature: Destinations

  @wip
  Scenario: A traveller adds a destinations to their bucketlist
    Given some destinations with some bucketlist items
      And a traveller who has added an item to their bucketlist
      And they have signed in
    When they add a destination
    Then it should appear on the page