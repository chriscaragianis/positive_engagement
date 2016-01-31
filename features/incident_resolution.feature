Scenario: a counselor receives an incident report
  Given a counselor receives an incident report
  Then the reported user is displayed
  And the reported tweet is displayed
  And the incident is removed from unresolved incidents

Scenario: a counselor resolves an incident
  Given a counselor at an incident report page
  And the resolution form is completed
  And a counselor clicks submit
  Then the incident is added to resolved incidents
