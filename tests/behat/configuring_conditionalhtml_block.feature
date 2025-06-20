@block @block_conditionalhtml @core_block
Feature: Adding and configuring conditional HTML blocks
  In order to have custom blocks on a page
  As admin
  I need to be able to create, configure and change conditional HTML blocks

  @javascript
  Scenario: Configuring the conditional HTML block with Javascript on
    Given I log in as "admin"
    And I am on site homepage
    When I turn editing mode on
    And I add the "Conditional HTML" block
    And I configure the "(new conditional HTML block)" block
    And I set the field "Content" to "Static text without a header"
    Then I should see "Conditional HTML block title"
    And I press "Save changes"
    Then I should not see "(new conditional HTML block)"
    And I configure the "block_conditionalhtml" block
    And I set the field "HTML block title" to "The conditional HTML block header"
    And I set the field "Content" to "Static text with a header"
    And I press "Save changes"
    And "block_conditionalhtml" "block" should exist
    And "The conditional HTML block header" "block" should exist
    And I should see "Static text with a header" in the "The conditional HTML block header" "block"

  Scenario: Configuring the HTML block with Javascript off
    Given I log in as "admin"
    And I am on site homepage
    When I turn editing mode on
    And I add the "Conditional HTML" block
    And I configure the "(new conditional HTML block)" block
    And I set the field "Content" to "Static text without a header"
    And I press "Save changes"
    Then I should not see "(new conditional HTML block)"
    And I configure the "block_conditionalhtml" block
    And I set the field "conditional HTML block title" to "The HTML block header"
    And I set the field "Content" to "Static text with a header"
    And I press "Save changes"
    And "block_conditionalhtml" "block" should exist
    And "The conditional HTML block header" "block" should exist
    And I should see "Static text with a header" in the "The conditional HTML block header" "block"
