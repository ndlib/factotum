Feature: Refworks Password Reset
  In order to access my account
  As a Refworks user who forgot my password
  I want to be able to reset my password
  
  Scenario: Verify my account
    Given I have entered jkennel@nd.edu into the form
    When I press Submit
    Then an email should be sent to jkennel@nd.edu verifying my account