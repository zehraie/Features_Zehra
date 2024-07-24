Feature: Edit Books Functionality

    As an admin, I should be able to edit books on the "Books" page.

     Background:
    Given the user is logged in as 'admin'
    And user navigates to the "User Management" page

  Scenario: Verify admin can edit user details
    When the admin is on the "User Management" page
    And the admin verifies that the "Edit User" button is enabled
    And the admin clicks the "Edit User" button
    And the admin enters the following details:
      | Field       | Value             |
      | Full Name   | New Full Name      |
      | Email       | new.email@example.com |
      | Address     | New Address        |
    And the admin clicks the "Save changes" button
    Then the user details should be updated with the new information

    #! Acceptance Criteria are missing :(


    #TODO: Analyze the user story and create acceptance criteria yourself!


    #TODO: Create scenarios that cover all the acceptance criteria