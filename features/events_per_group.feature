Feature: verify the main page all the fields
  

  Background: navigate to the data main page
    Given I load "main page"


  Scenario: search data will return matched result
    When I type "<text>" in search 
    Then I should see "<search result>"

  @navigate_page
  Scenario Outline: Click on icon will redirect to corresponding page
    When I click on icon "<icon name>" 
    Then I should redirect to "<link>"

    Examples:
      | icon name          | link                        |
      | repos per week     | ./dataset/repos-per-week/   |
      | events per week    | .//dataset/events-per-week/ |
      | activities per programming languages | ./dataset/repos-update-activities-per-programming/ |
      | active user groups | ./dataset/events-per-group/ |
      | active repositories | ./dataset/repos-most-active/ |
      | repositories per programming language | ./dataset/repos-per-programming-language/ |
      | event day of week | ./dataset/events-per-day-of-week/ |
      | event per week of month | ./dataset/events-per-week-of-month/ |
      | event duration | ./dataset/events-per-duration/ |
      | event time of day | ./dataset/events-per-time-of-day/ |
      | event locations | ./dataset/events-per-location/ |

   @navigate_page
   Scenario: click on links will lead to related link 
     When I click the link "<link name>"
     Then I should redirect to "<link>"

     Examples:
       | link name        | link                |
       | suggestions      | https://twitter.com/webuildsg |
       | report bugs / send pull requests | https://github.com/webuildsg/data |



