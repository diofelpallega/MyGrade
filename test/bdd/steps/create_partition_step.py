from lettuce import step, world
from nose.tools import assert_equal

@step(u'Given that Faculty has an identity "([^"]*)"')
def given_that_faculty_has_an_identity_group1(step, name):
    world.name = name

@step(u'When the Faculty assigns percentage of "([^"]*)" to period "([^"]*)"')
def when_the_faculty_assigns_percentage_of_group1_to_period_group2(step,
                                                                percentage, period):
    assign_percentage(period, percentage)

@step(u'Then a partition of the grading system is made')
def then_a_partition_of_the_grading_system_is_made(step):
    assert_equal( check_partition(period, faculty, subject), True)