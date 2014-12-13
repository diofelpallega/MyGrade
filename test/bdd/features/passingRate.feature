 Feature: Passing rate specification

    As a faculty user, I wish to be able to input and edit any desired passing rate to a specific grading item

    Scenario:
    Given I choose the grading item exists
    When I enter "80%" as the passing rate
    Then the system will store and print the passing rate

    Scenario:
    Given I choose the grading item "Quiz"
    When I replaced the current passing rate to "60%"
    Then the system updates the passing rate

    