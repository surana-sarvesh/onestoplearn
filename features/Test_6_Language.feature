Feature: View video tutorial,quiz and documentation

  As a user
  So that I can view the video tutorials, quiz and documentation
  I want to select the link
  
  
  Scenario: Select video/doc link
    Given I'm on the Ruby page
    When I click on a video link
    Then I should be able to see the video tutorial

    When I click on a quiz link
    Then I should be able to see the quiz

    When I click on the documentation link
    Then I should be able to see the documentation
    