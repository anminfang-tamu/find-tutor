Feature: Does new user create?
  User wants to edit profile
  
  Scenario Outline: New user can or can not edit profile
    Given user is "<user>"
    When user wants to edit profile
    Then the user should be "<answer>"
    
  Examples:
  | user          | answer |
  | Danny         | Yes    |
  | Alex          | Yes    |
  | Others        | Nope   |