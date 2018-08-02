class SearchPage < BrowserHelper
	URL ||= 'https://www.google.com/'

	# Opens browser and Navigates to www.google.com
	def open
		@browser.goto(URL)
		Watir::Wait.until { search_field.exists? }
		self
	end

	# Searches for a given term on Google Search
	# @param search_term [String] the term to be searched on Google
	# @return [Object] the object of ResultPage
	def search(search_term = 'Paxos Bankchain')
		search_field.set(search_term)
		press_enter

		next_page = ResultPage.new(@browser)
		Watir::Wait.until { next_page.loaded? }
		next_page
	end

	# Search field on www.google.com
	def search_field
		@browser.text_field(:name => 'q')
		
	end

	# Simulates pressing Enter/ Return key of keyboard
	def press_enter
		@browser.send_keys(:enter)
	end
end