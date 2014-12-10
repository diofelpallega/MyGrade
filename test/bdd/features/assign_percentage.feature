Feature: Assign percentage on the created partition of grading items.

	Scenario: Assign percentage to grading item
	Given a grading item "Quiz" and "Exam" on Grading period "Prelim"
	Then I set the percentage of grading item "Quiz" to "30" percent
	And I set the percentage of grading item "Exam" to "70" percent
	Then the grading period "Prelim" will have grading items with percent
	|Quiz  |Exam |
        |30    |70   |

	Scenario: Assigning percentage to a grading item with total more than 100%
	Given a grading item "Quiz" and "Exam" on Grading period "Prelim"
	Then I set the percentage of grading item "Quiz" to "40" percent
	And I set the percentage of grading item "Exam" to "70" percent
	Then the system will warn the user about over 100 percent error
