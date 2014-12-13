 Feature: Create partition for each period in a specific semester
        
        As a Faculty User, I want to create a partition of the 
        grading system for every grading period.
         
        Scenario: Create partition for each period
        Given that Faculty has an identity
        When the Faculty assigns percentage to each period
        Then a partition of the grading system is made