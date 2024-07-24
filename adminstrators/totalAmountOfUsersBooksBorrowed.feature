Feature: Total Amount of Users, Books, and Borrowed Books

  As an admin, I want to see the total amount of users, books, and borrowed books on the "Dashboard" page.

  Background:
    Given the user is logged in as 'admin'
    And user navigates to the Dashboard page

  Scenario: Verify admin can see the total number of users, books, and borrowed books
    When user is on the Dashboard page
    Then user should see the total number of users and the "Users" text displayed
    And user should see the total number of books and the "Books" text displayed
    And user should see the total number of borrowed books and the "Borrowed Books" text displayed

    #* AC1: Admin should see the total number of users and the “Users” text. 
    #* AC2: Admin should see the total number of books and the “Books” text. 
    #* AC3: Admin should see the total number of borrowed books and the “Borrowed Books” text. 


    # TODO: Verify admins see the total number of users and the “Users” text.
    

    # TODO: Verify admins see the total number of books and the “Books” text.
    

    # TODO: Verify admins see the total number of borrowed books and the “Borrowed Books” text.
    
    
    #? Should there be more scenarios for this user story? Feel free to add more scenarios.