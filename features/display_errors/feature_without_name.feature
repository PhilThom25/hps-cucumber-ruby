Feature:
    As a coffee lover
    I have to put fresh beans from time to time
    So I can have coffee when I need it
    I changed something

  Background:
    Given the coffee machine is started
    And I handle everything except the beans

  Scenario: Message "Fill beans" is displayed after 39 coffees are taken
    When I take "39" coffees
    Then message "Fill beans" should be displayed

  Scenario:
    When I take "39" coffees
    Then message "Fill beans" should be displayed
