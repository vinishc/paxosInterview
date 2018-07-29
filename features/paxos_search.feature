Feature: Searching for Paxos via google search

Scenario: Verify the browser url includes the searched term (paxos) and Paxos Bankchain appears on the search results page
    When I search for Paxos BankChain on Google Search
    Then I verify the browser url includes the searched term paxos
      And I verify Paxos Bankchain appears on the search results page