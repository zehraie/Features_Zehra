@login
Feature: Login to the application
  As a user, I want to login so that I can access the app's main features.

  #* AC1: users should be able to log in with valid credentials and launch to the homepage.
  #* AC2: users should see a "Sorry, Wrong Email or Password" error pop-up message if any users try to log in with invalid credentials.
  #* AC3: users should see a “This field is required.” error pop-up message when they attempt to log in without any credentials.


  Background:
    Given user is already on the login page

  Scenario Outline: Verify users can login with valid credentials
    When user enters valid username '<user-type>'
    And user enters valid password '<user-type>'
    And user clicks the login button
    Then user login succussfully to the homepage
    Examples:
      | user-type |
      | admin     |
      | studen    |

      Scenario Outline: Verify users receive an error message for invalid username
  When user enters invalid username '<invalid-username>'
  And user enters valid password '<user-type>'
  And user clicks the login button
  Then user sees an error message "Please enter a valid email address."
  And user is not logged in
  Examples:
    | invalid-username        | user-type |
    | invalid-email@example   | admin     |
    | wrong-user@domain       | student   |

      Scenario Outline: Verify users receive an error message for invalid password
  When user enters valid username '<user-type>'
  And user enters invalid password '<invalid-password>'
  And user clicks the login button
  Then user sees an error message "Error: Please enter a valid password."
  And user is not logged in
  Examples:
    | user-type | invalid-password |
    | admin     | wrongpassword    |
    | student   | 12345            |

    Scenario: Verify error messages when username and password are not entered
  When user clicks the username input box
  And user does not enter a username
  And user clicks the password input box
  And user does not enter a password
  And user clicks the login button
  Then user sees an error message "This field is required." for the username field
  And user sees an error message "This field is required." for the password field
  And user is not logged in


# TODO: Verify users can not login with invalid credentials


# TODO: Verify users are not allowed to login without any credentials


    #? Should there be more scenarios for this user story? Feel free to add more scenarios.


# Error: Please enter a valid password
# Please enter a valid email address.

# This field is required.   ilkonce password girince

# LIBRARY_URL = "https://library2.cydeo.com/"

# LIBRARY_STUDENT_USERNAME="student5@library"
# LIBRARY_STUDENT_PASSWORD="libraryUser"

# LIBRARY_ADMIN_USERNAME="librarian10@library"
# LIBRARY_ADMIN_PASSWORD="libraryUser"