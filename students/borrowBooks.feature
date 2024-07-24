Feature: Borrowing books

  As a student, I should be able to borrow books on the "Books" Page.

  Background:
    Given the user is logged in as 'student'
    And user is on the "Books" page

  Scenario: Verify and borrow an enabled book
    When user views the list of books
    Then user should see multiple books with "Borrow Book" buttons
    And the following books should have an enabled "Borrow Book" button:
      | ISBN         | Name             | Author           | Category            | Year | Borrower      |
      | 9791398405423| Mother Night78   | Collin Schulist   | Historical Fiction  | 1480 |              |
    And the following books should have a disabled "Borrow Book" button:
      | ISBN         | Name           | Author          | Category       | Year | Borrower        |
      | 9791207273878| q              | Test Student 5  | Fan-Fiction    | 2023 | Test Student 5  |
    When user clicks the "Borrow Book" button for the book with ISBN '9791398405423'
    Then the book with ISBN '9791398405423' should be successfully borrowed
    And the "Borrow Book" button for the book with ISBN '9791398405423' should become disabled
    And the book with ISBN '9791398405423' should now have the "Borrow Book" button disabled


    #! Acceptance Criteria are missing :(

    #TODO: Analyze the user story and create acceptance criteria yourself!

    #TODO: Create scenarios that cover all the acceptance criteria
