Feature: Deleting Projects
  In order to remove needless projects
  As a project manager
  I want to be able to delete them

Scenario: Deleting a project
  Given there is a project called "TextMate 2"
  And I am on the homepage
  When I follow "TextMate 2"
  And I follow "Delete Project"
  Then I should see "Project has been deleted."
  Then I should not see "TextMate 2"