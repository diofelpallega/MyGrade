# -*- coding: utf-8 -*-

from nose.tools import assert_equal, assert_in
from lettuce import *
from webtest import TestApp  
from lettuce import step

partition = Partition()
prelim = partition.prelim

@step(u'Given a grading item "([^"]*)" and "([^"]*)" on Grading period "([^"]*)"')
def given_a_grading_item_group1_and_group2_on_grading_period_group3(step, grading_item1, grading_item2, grading_period):
    #assert True, 'Grading items 1 and 2 are assumed to be in prelim (assuming prelim exist'
    partition.add(grading_period, grading_item1)
    partition.add(grading_period, grading_item2)
    

@step(u'Then I set the percentage of grading item "([^"]*)" to "([^"]*)" percent')
def then_i_set_the_percentage_of_grading_item_group1_to_group2_percent(step, grading_item1, percent_share):
    partition.assignPercentage(prelim, grading_item1, percent_share)

@step(u'And I set the percentage of grading item "([^"]*)" to "([^"]*)" percent')
def and_i_set_the_percentage_of_grading_item_group1_to_group2_percent(step, grading_item2, group2):
    partition.assignPercentage(prelim, grading_item2, percent_share)
    
@step(u'Then the grading period "([^"]*)" will have grading items with percent')
def then_the_grading_period_group1_will_have_grading_items_with_percent(step, grading_item1):
    for row in step.hashes:
        quiz_percent_share = row['Quiz']
        exam_percent_share = row['Exam']
        assert_equal(quiz_percent_share,30)
        assert_equal(exam_percent_share,70) 

@step(u'Then the system will warn the user about over 100 percent error')
def then_the_system_will_warn_the_user_about_over_100_percent_error(step):
    partition.assignPercentage(prelim, "Quiz", 70)
    partition.assignPercentage(prelim, "Exam", 40)        
    assert_equal(partition.checkPercentageError, "Error") 

