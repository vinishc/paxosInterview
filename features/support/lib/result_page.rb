require_relative 'browser_helper'
class ResultPage < BrowserHelper
	def loaded?
		@browser.span(:text => 'Next').exist?
	end

	def check_url
		@browser.url.split('q=').last.downcase.start_with?('paxos')
	end

	def check_search_results
		expected_text = 'Paxos - Simplify Settlement | Bankchain & Blockchain Solutions'
		actual_text = @browser.link(:href => 'https://www.paxos.com/').text
		expected_text == actual_text
	end
end