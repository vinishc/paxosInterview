When(/^I call the (XBTUSD) ticker API$/) do |currency_pair|
	@response = page.api.get_response(currency_pair)
end

When(/^I verify currency pair (XBTUSD) is present in the API response$/) do |currency_pair|
	unless page.api.verify_response(@response, currency_pair)
		fail("#{currency_pair} was not found in the API response: #{@response}")
	end
end