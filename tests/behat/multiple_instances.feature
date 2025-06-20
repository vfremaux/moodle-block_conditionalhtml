@block @block_conditionalhtml
Feature: Adding and configuring multiple HTML blocks
  In order to have one or multiple HTML blocks on a page
  As admin
  I need to be able to create, configure and change HTML blocks

  Background:
    Given I log in as "admin"
    And I am on site homepage
    When I turn editing mode on
    And I add the "Conditional HTML" block

  Scenario: Other users can not see HTML block that has not been configured
    Then "(new conditional HTML block)" "block" should exist
    And I log out
    And "(new conditional HTML block)" "block" should not exist
    And "block_conditionalhtml" "block" should not exist

  Scenario: Other users can see conditional HTML block that has been configured even when it has no header
    And I configure the "(new conditional HTML block)" block
    And I set the field "Content" to "Static text without a header"
    And I press "Save changes"
    Then I should not see "(new conditional HTML block)"
    And I log out
    And I am on homepage
    And "block_conditionalhtml" "block" should exist
    And I should see "Static text without a header" in the "block_conditionalhtml" "block"
    And I should not see "(new conditional HTML block)"

  Scenario: Adding multiple instances of HTML block on a page
    And I configure the "block_conditionalhtml" block
    And I set the field "conditional HTML block title" to "The HTML block header"
    And I set the field "Content" to "Static text with a header"
    And I press "Save changes"
    And I add the "HTML" block
    And I configure the "(new conditional HTML block)" block
    And I set the field "conditional HTML block title" to "The second conditional HTML block header"
    And I set the field "Content" to "Second block contents"
    And I press "Save changes"
    And I log out
    Then I should see "Static text with a header" in the "The HTML block header" "block"
    And I should see "Second block contents" in the "The second HTML block header" "block"
