Feature: Intergrte friendly_id
  Add friendly_id to url path

  Background:
    Given there are two reqesters having several tasks each belonging to some categories

  Scenario: Visit url with friendly task name
    Given I visit url "/bad-mowing-machine"
    Then I should see "Bad mowing machine"
    And I should see "power surge damaged"

  Scenario: Not possible to visit url with task id
    Given I visit task using id of task with name "Bad mowing machine"
    Then I should see "Routing Error"
