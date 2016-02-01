Feature: issue resolution

  Scenario: a helper receives an issue report
    Given a helper receives an issue report
    Then the reported user is displayed
    And the reported tweet is displayed
    And the issue is removed from unresolved issues

  Scenario: a helper resolves an issue
    Given a helper at an issue report page
    And the resolution form is completed
    And a helper clicks submit
    Then the issue is added to resolved issues
