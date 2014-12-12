Feature: Add Activity Score

	Scenario: Input Score
	Given I have a student "lorie"
	And I an activity item "Quiz1"
	When I input the score "10"
	Then the score of "lorie" is "10" in activity item "Quiz1"

	Scenario: Edit Score
	Given I have a student "lorie" with score "10" in activity item "Quiz1"
	When I edit the score of "lorie" in "Quiz1" to "5"
	Then the score is now "5"
