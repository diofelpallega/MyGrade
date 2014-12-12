Feature: Create partition of a grading system

		 As a Faculty User I want to create a partition of the grading system  

		 Scenario: Create partition of the grading system
		 Given I am in the virtual Class Record "myGrade"
		 And I want to create partition "Prelim" 
		 When I click "create" partition
		 Then I have created "Prelim" as a partition of the grading system


		 