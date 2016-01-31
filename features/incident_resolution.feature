Feature: issue resolution

  Scenario: a counselor receives an issue report
    Given a counselor receives an issue report
    Then the reported user is displayed
    And the reported tweet is displayed
    And the issue is removed from unresolved issues

  Scenario: a counselor resolves an issue
    Given a counselor at an issue report page
    And the resolution form is completed
    And a counselor clicks submit
    Then the issue is added to resolved issues
