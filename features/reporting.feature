  Scenario: A community member asks for help dealing with an offensive or
    abusive Bernie supporter on Twitter
    Given a community member visits the site
    And clicks Report a problem
    Then the report page is displayed

  Scenario: A community member reports offensive or abusive behavior
    Given a community member at the report page
    Then the incident report form is displayed

  Scenario: A community member submits info on an incident
    Given a community member at the report page
    And the incident report form is completed
    And a community member clicks submit
    Then the incident is created
    And the incident is saved
    And the incident is reported to a counselor

  Scenario: A community member receives requested feedback on incident
    resolution
    Given a counselor submits a resolved incident
    And anonymity has not been requested
    Then a mail is generated containing the resolution
