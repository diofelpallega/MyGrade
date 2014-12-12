Feature: Create/Remove Grading item and  Assign/edit percent share

		 As a Faculty User I want to create a grading 
		 item on a particular period

		 Scenario: Create Grading Item
		 Given I have a grading period "Prelim"
		 When I create grading item "Quiz"
		 Then Grading item will have "Quiz"

		 Scenario: 	Assign percent share on a Grading Item
		 Given I have a grading item "Quiz"
		 And "Quiz" is a grading item of period "Prelim"
		 When I assign "40" percent share to "Quiz"
		 Then "Quiz" have a "40" percent share

		 Scenario: Edit percent share
		 Given I have a grading  item "Quiz"
		 And "Quiz" is a grading item of period "Prelim"
		 When I click "edit" on grading item "Quiz"
		 Then I can edit grading item 

		 Scenario: Remove grading Item 
		 Given I have a grading item "Quiz"
		 And "Quiz" is a grading item of period "Prelim"
		 When I click "remove" on grading item "Quiz"
		 Then "Quiz" is not a grading item
