Feature: Main modules of the application

  As a student, I want to access the main modules of the app.

  Scenario Outline: Verify students can see and navigate to main modules
    Given the user is logged in as 'student'
    When user navigates to the main page
    Then user should see the "<module-name>" module
    When user clicks on the "<module-name>" module
    Then user should be navigated to the "<page-name>" page

  Examples:
    | module-name       | page-name             |
    | Books             | Book Management       |
    | Borrowing Books   | Borrowing Books        |


    #* AC: students should see 2 modules: Books, Borrowing Books


    # TODO: Verify students can see 2 main modules (Books and Borrowing Books)
  

    #? Should there be more scenarios for this user story? feel free to add more scenarios

