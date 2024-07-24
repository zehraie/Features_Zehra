Feature: Return Books Functionality

  As a student, I should be able to return the borrowed books on the "Borrowing Books" page.

  Background:
    Given the user is logged in as 'student'
    And user is on the "Borrowing Books" page

  Scenario: Verify and return a borrowed book
    When user views the table of borrowed books
    And user searches for the book with the name 'Mother Night78'
    Then user should see the "Return Book" button for the book 'Mother Night78'
    And the "Return Book" button should be clickable
    When user clicks the "Return Book" button for the book 'Mother Night78'
    Then user should see a message "The book has been returned"
    And the "Return Book" button for the book 'Mother Night78' should be disabled


    #! Acceptance Criteria are missing :(

    #TODO: Analyze the user story and create acceptance criteria yourself!

    #TODO: Create scenarios that cover all the acceptance criteria