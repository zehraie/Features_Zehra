Feature: Main Modules of the Application

  As an admin, I want to access the main modules of the app.

  Background:
    Given the user is logged in as 'admin'
    And user navigates to the Dashboard page

  Scenario: Verify admins can see 3 main modules
    When user is on the Dashboard page
    Then user should see the following modules:
      | Module       |
      | Dashboard    |
      | Users        |
      | Books        |

    #* AC: Admin users should see 3 modules: Dashboard, Users, Books

  
    # TODO: Verify admins can see 3 main modules (Dashboard, Users, and Books)
    

    #? Should there be more scenarios for this user story? Feel free to add more scenarios.