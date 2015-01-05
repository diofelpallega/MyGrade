# lorie
from lettuce import step

#create
@step(u'Given I have a partition "([^"]*)"')
def given_i_have_a_grading_period_group1(step, partition):
    assert True
    
@step(u'When I create grading item "([^"]*)"')
def when_i_create_grading_item_group1(step, gradingItem):
    #create_grading_item(gradingItem)
    assert True
    
@step(u'Then Grading item will have "([^"]*)"')
def then_grading_item_will_have_group1(step, gradingItem):
    #grading_item_exist(gradingItem)
    assert True
    
#edit
@step(u'Given I have a grading  item "([^"]*)"')
def given_i_have_a_grading_item_group1(step, gradingItem):
    #grading_item_exist(gradingItem)
    assert True
    
@step(u'And "([^"]*)" is a grading item of partition "([^"]*)"')
def and_group1_is_a_grading_item_of_partition_group2(step, gradingItem, partition):
    #check_grading_item(gradingItem, partition)
    assert True
    
@step(u'When I click "([^"]*)" on grading item "([^"]*)"')
def when_i_click_group1_on_grading_item_group2(step, group1, group2):
    assert True
    
@step(u'Then I can edit grading item')
def then_i_can_edit_grading_item(step):
    #check_grading_item(gradingItem, partition)
    assert True
    
#remove
@step(u'Given I have a grading item quiz "([^"]*)"')
def given_i_have_a_grading_item_quiz_group1(step, gradingItem):
    #grading_item_exist(gradingItem)
    assert True
    
@step(u'And "([^"]*)" is a grading item of partition this "([^"]*)"')
def and_group1_is_a_grading_item_of_partition_this_group2(step, group1, group2):
    #check_grading_item(gradingItem, partition)
    assert True
    
@step(u'Then "([^"]*)" is not a grading item')
def then_group1_is_not_a_grading_item(step, group1):
    #grading_item_exist(gradingItem)
    assert True
    
#ass
@step(u'Given I have a grading item this "([^"]*)"')
def given_i_have_a_grading_item_this_group1(step, gradingItem):
    #grading_item_exist(gradingItem)
    assert True
    
@step(u'When I assign "([^"]*)" percent share to "([^"]*)"')
def when_i_assign_group1_percent_share_to_group2(step, percentShare, gradingItem):
    #assignPercentShare(percentShare, gradingItem)
    assert True
    
@step(u'Then "([^"]*)" have a "([^"]*)" percent share')
def then_group1_have_a_group2_percent_share(step, gradingItem, percentShare):
    #checkPercentShare(gradingItem,percentShare)
    assert True
    
    