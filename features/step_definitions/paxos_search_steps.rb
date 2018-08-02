When(/^I search for (.*) on Google Search$/) do |search_term|
	search_page = page.search_page.open
	@result_page = search_page.search(search_term)
end

Then(/^I verify the browser url includes the searched term (.*)$/) do |search_term|
	unless @result_page.check_url(search_term.downcase)
		fail('URL is missing the search term paxos')
	end
end

And(/^I verify (.*) appears on the search results page$/) do |search_term|
	unless @result_page.check_search_results(search_term.downcase)
		fail("#{search_term} is not displayed on search results page")
	end
end

And(/^I verify each search term from (.*) is included in the browser url and in search results$/) do |file_name|
	search_terms = page.csv_helper.get_search_terms(file_name)
	search_terms.each do |term|
		step("I search for #{term} on Google Search")
		step("I verify the browser url includes the searched term #{term}")
		step("I verify #{term} appears on the search results page")
	end

end