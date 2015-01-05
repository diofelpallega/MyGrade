Feature: Create/Remove Grading item and  Assign/edit percent share

		 As a Faculty User I want to create a grading 
		 item on a particular period
		 
		 @create
		 Scenario: Create Grading Item
		 Given I have a partition "Prelim"
		 When I create grading item "Quiz"
		 Then Grading item will have "Quiz"

		 @edit
		 Scenario: Edit percent share
		 Given I have a grading  item "Quiz"
		 And "Quiz" is a grading item of partition "Prelim"
		 When I click "edit" on grading item "Quiz"
		 Then I can edit grading item 

		 @remove
		 Scenario: Remove grading Item 
		 Given I have a grading item quiz "Quiz"
		 And "Quiz" is a grading item of partition "Prelim"
		 When I click "remove" on grading item "Quiz"
		 Then "Quiz" is not a grading item
		 
		 @ass
		 Scenario: Assign percent share on a Grading Item
		 Given I have a grading item this "Quiz"
		 And "Quiz" is a grading item of partition "Prelim"
		 When I assign "40" percent share to "Quiz"
		 Then "Quiz" have a "40" percent share