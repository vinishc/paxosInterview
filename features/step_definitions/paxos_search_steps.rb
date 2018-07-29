When(/^I search for Paxos BankChain on Google Search$/) do 
	search_page = PaxosSearch.page.search_page.open
	@result_page = search_page.search
end

Then(/^I verify the browser url includes the searched term paxos$/) do
	unless @result_page.check_url
		fail('URL is missing the search term paxos')
	end
end

And(/^I verify Paxos Bankchain appears on the search results page$/) do
	unless @result_page.check_search_results
		fail('Paxos Bankchain is not displayed on search results page')
	end
end