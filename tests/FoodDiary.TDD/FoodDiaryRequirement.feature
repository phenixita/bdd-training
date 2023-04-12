Feature: Food diary

![Alt](img src)

Scenario: Allow to add new meal to the list
    Given a new meal
    Given the repository food diary mock
    Given the service is ready
    When the meal is added
    Then the repo contains the new meal
