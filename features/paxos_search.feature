@googleSearch
Feature: Searching for Paxos via google search

@singleTermSearch
Scenario: Verify the browser url includes the searched term (paxos) and Paxos Bankchain appears on the search results page
    When I search for Paxos BankChain on Google Search
    Then I verify the browser url includes the searched term Paxos Bankchain
      And I verify Paxos Bankchain appears on the search results page

@searchFromFile
Scenario: The user can search for multiple terms listed in the file
    Then I verify each search term from data.csv is included in the browser url and in search results