Feature: User Groups Filtering

  As an admin, I should be able to filter the user groups on the "Users" page.

  Background:
    Given the user is logged in as 'admin'
    And user navigates to the "User Management" page

  Scenario: Verify admin can filter users by the 'Librarian' group
    When the admin clicks the "User Group" dropdown
    And the admin selects "Librarian" from the dropdown
    Then all users displayed under the Group column should be "Librarian"

    Feature: User Groups Filtering

  As an admin, I should be able to filter the user groups on the "Users" page.

  Background:
    Given the user is logged in as 'admin'
    And user navigates to the "User Management" page

  Scenario: Verify admin can filter users by the 'Students' group
    When the admin clicks the "User Group" dropdown
    And the admin selects "Students" from the dropdown
    Then all users displayed under the Group column should be "Students"



    #! Acceptance Criteria are missing :(


    #TODO: Analyze the user story and create acceptance criteria yourself!


    #TODO: Create scenarios that cover all the acceptance criteria
