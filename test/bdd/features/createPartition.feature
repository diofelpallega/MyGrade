 Feature: Create partition for each period in a specific semester
        
        As a Faculty User, I want to create a partition of the 
        grading system for every grading period.
        
        @create_partition_percent_prelim
        Scenario: Create partition for each period
        Given that Faculty has an identity "Diofel Pallega"
        When the Faculty assigns percentage of "30%" to period "Prelim" 
        Then a partition of the grading system is made