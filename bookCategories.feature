Feature: Book Categories

  As a user, I want to see 23 book categories, so I can filter my favorite books.

  Background:
    Given the user is logged in as 'admin'

  Scenario: Verify users can see 23 book categories in the dropdown
    Given user is on the book management page
    When user clicks the Book Categories dropdown
    Then user should see 23 book categories in the dropdown
    And the dropdown options should include:
      | category                    |
      | ALL                         |
      | Action and Adventure        |
      | Anthology                   |
      | Classic                     |
      | Comic and Graphic Novel     |
      | Crime and Detective         |
      | Drama                       |
      | Fable                       |
      | Fairy Tale                  |
      | Fan-Fiction                 |
      | Fantasy                     |
      | Historical Fiction          |
      | Horror                      |
      | Science Fiction             |
      | Humor                       |
      | Biography/Autobiography     |
      | Romance                     |
      | Short Story                 |
      | Essay                       |
      | Memoir                      |
      | Poetry                      |
      | Thrillers                   |
      | Young adults                |
       
Scenario Outline: Verify texts and elements on the book management page
  Given user is on the book management page
  Then the page URL contains '<url-fragment>'
  And the page title is '<page-title>'
  And the SearchBox input box has the text '<search-text>'
  And the SearchBox input box is enabled
  And the BookCategories dropdown has the text '<dropdown-text>'
  And there is a text '<text-before-dropdown>' before the RecordDropdown
  And there is a text '<text-after-dropdown>' after the RecordDropdown
  Examples:
    | url-fragment | page-title      | search-text | dropdown-text   | text-before-dropdown | text-after-dropdown |
    | #books       | Book Management | Search:     | Book Categories | Show  


#* AC1: users should see 23 book categories When users click the Book Categories drop down 
    #*      ALL, Action and Adventure, Anthology, Classic, Comic and Graphic Novel, Crime and Detective, Drama
    #*      , Fable, Fairy Tale, Fan-Fiction, Fantasy, Historical Fiction, Horror, Science Fiction, Humor
    #*      , Biography/Autobiography ,Romance, Short Story, Essay, Memoir, Poetry, Thrillers, Young adults    
    # TODO: verify users see 23 book categories

    
    #? Should there be more scenarios for this user story? Feel free to add more scenarios.