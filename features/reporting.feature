Feature: reporting

  Scenario: A community member asks for help dealing with an offensive or
    abusive Bernie supporter on Twitter
    Given a community member visits the site
    And clicks Report a problem
    Then the report page is displayed

  Scenario: A community member reports offensive or abusive behavior
    Given a community member at the report page
    Then the issue report form is displayed

  Scenario: A community member submits info on an issue
    Given a community member at the report page
    And the issue report form is completed
    And a community member clicks submit
    Then the issue is created and saved
    And the issue is reported to a counselor

  Scenario: A community member receives requested feedback on issue
    resolution
    Given a counselor submits a resolved issue
    And anonymity has not been requested
    Then a mail is generated containing the resolution
