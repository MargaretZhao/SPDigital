Feature: verify the main page all the fields

  Background: navigate to the data main page
    Given the user load main page

  Scenario: search data will return matched result
    When the user type "<text>" in search 
    Then the user should see "<search result>"

  @t1
  Scenario Outline: Click on icon in the middle of the page will redirect to corresponding page
    When the user click on icon "<icon>" in the middle of the page
    Then a chart with title "<title>" should display

    Examples:
      | icon               | title                        |
      | repos per week     | repositories updated per week  |
      | events per week    | events per week |
      | activities per programming languages | update activities per programming languages |
      | active user groups | active user groups with > 5 events |
      | active repositories | active repos with > 10 updates |
      | repositories per programming language | repositories per programming languages |
      | event day of week | events by day of week |
      | event per week of month | events per week of month |
      | event duration | events by duration |
      | event time of day | events by time of day |
      | event locations | popular event locations |

   @t2
   Scenario Outline: click on links will lead to related link 
     When the user click the link "<text>"
     Then the user should redirect to "<url>"

     Examples:
       | text             | url                |
       | suggestions      | https://twitter.com/webuildsg |
       | report bugs / send pull requests | https://github.com/webuildsg/data |

  @t3
  Scenario Outline: Click on icon at the bottom of the page will redirect to corresponding page
    When the user click on icon "<icon name>" at the bottom of the page
    Then the user should redirect to "<url>"

