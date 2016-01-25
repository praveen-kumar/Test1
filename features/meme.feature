Feature: Meme creation
  As a customer
  I want to create a meme using the meme creation functionality on "https://imgflip.com/"
  so that I can share it with others
  @create-meme
  Scenario: Visit homepage of the meme creation tool
    Given I am on "https://imgflip.com/"
    And I click on the link to make a meme
    And I select the "grumpy cat" meme
    And I add the custom top sentence as "there you are"
    And I add the custom bottom sentence as "oh no!"
    When I generate the meme on the meme generator
    Then the Image HTML value is a syntactical valid HTML
    And on the image page the title matches the meme template title
    And the image description on the right contains the custom phrases used to create the meme