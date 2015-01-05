from lettuce import step

@step(u'Given I have a student "([^"]*)"')
def given_i_have_a_student_group1(step, student_name):
    student = Student()
    student.add_student(student_name)

@step(u'And I an activity item "([^"]*)"')
def and_i_have_an_activity_item_group1(step, activity_item):
    gradingitem = GradingItem()
    gradingitem.add_activity_item(activity_item)

@step(u'When I input the score "([^"]*)"')
def when_i_input_the_score_group1(step, score, activity_item, student_name):
    activityitem = ActivityItem(activity_item,student_name)
    activityitem.add_score(score)

@step(u'Then the score of "([^"]*)" is "([^"]*)" in activity item "([^"]*)"')
def then_the_score_of_group1_is_group2_in_activity_item_group3(step, student_name, score, activity_item):
    activityitem = ActivityItem(activity_item,student_name)
    assertEqual(activityitem.score, score)

@step(u'Given I have a student "([^"]*)" with score "([^"]*)" in activity item "([^"]*)"')
def given_i_have_a_student_group1_with_score_group2_in_activity_item_group3(step, student_name, score, activity_item):
    gradingitem = GradingItem()
    gradingitem.add(activity_item, student_name, score)
    #check

@step(u'When I edit the score of "([^"]*)" in "([^"]*)" to "([^"]*)"')
def when_i_edit_the_score_of_group1_in_group2_to_group3(step, student_name, activity_item, new_score):
    activityitem = ActivityItem(activity_item,student_name)
    activityitem.edit_score(score)

@step(u'Then the score is now "([^"]*)"')
def then_the_score_is_now_group1(step, new_score, activity_item, student_name):
    activityitem = ActivityItem(activity_item,student_name)
    assertEqual(activityitem.score, new_score)