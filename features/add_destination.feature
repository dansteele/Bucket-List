Feature: Destinations

  @wip
  Scenario: A traveller adds a destinations to their bucketlist
    Given a traveller who has added an item to their bucketlist
      And they are on their bucket list page
    When they add a description
    Then it should appear on the page