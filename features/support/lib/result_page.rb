require_relative 'browser_helper'
class ResultPage < BrowserHelper

	# Checks if the result page is loaded
	# @return [Boolean] true if the search results page is loaded, false if the page is not laoaded
	def loaded?
		@browser.span(:text => 'Next').exist?
	end

	# Checks if the browser URL contains the search term
	# @param search_term [String] the term to be checked in the URL
	# @return [Boolean] true if the browser URL contains the search_term, else returns false 
	def check_url(search_term)
		search_term = search_term.gsub(' ', '+')
		@browser.url.split('q=').last.downcase.start_with?(search_term)
	end

	# Checks the Google search results if the search term is present, also checks if the result is from www.paxos.com
	# @param search_term [String] the term to be verified in the Google search results
	# @return [Boolean] true if the search term is present in Google results and it is from www.paxos.com, else return false
	def check_search_results(search_term)
		terms = search_term.split(' ')
		result = true
		unless @browser.link(:xpath => '//div[@class="rc"]//a').attribute_value('href').include?('www.paxos.com')
			return false
		end
		actual_text = @browser.link(:xpath => '//div[@class="rc"]//a').text.downcase
		terms.each do |term|
			result = false unless actual_text.include?(term)
		end
		result
	end
end