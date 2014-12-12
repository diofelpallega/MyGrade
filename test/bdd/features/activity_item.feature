Feature: Add/Remove Activity Item and Input/Edit total Item

	As a faculty user I have an activity item so that I can input grades later.

	@tag1
	Scenario: Add Activity Item
	Given I already have a grading item "Quiz"
	When I add "Quiz1" activity item
	Then activity item "Quiz1" exists

	@tag2
	Scenario: Input Total Items
	Given I have an Activity Item "Quiz1"
	When I add total items "20"
	Then I have a total items of "20" for activity item "Quiz1"

	@tag3
	Scenario: Edit the total items
	Given I have a total items of "20" for activity item "Quiz1"
	When I edit the total items of "10"
	Then I have a total items of "10" for activity item "Quiz1"

	@tag4
	Scenario: Remove activity item
	Given I have an activity item "Quiz1"
	When I remove the activity item "Quiz1"
	Then the activity item "Quiz1" does not exist.
