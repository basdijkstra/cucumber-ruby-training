Feature: Working with tables
  Let's have a look at how we can convert Gherkin table arguments to Ruby objects

  Scenario: much ado about accounts
    Given John is an active ParaBank customer
    And they have the following accounts
      |     type | balance | shared_with |
      | checking |    1000 |       Susan |
      |  savings |   50000 |      no one |
