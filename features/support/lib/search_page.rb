class SearchPage < BrowserHelper
	URL ||= 'https://www.google.com/'

	def open
		#browser.maximize
		@browser.goto(URL)
		Watir::Wait.until { search_field.exists? }
		self
	end

	def search(term = 'Paxos Bankchain')
		search_field.set(term)
		press_enter

		next_page = ResultPage.new(@browser)
		Watir::Wait.until { next_page.loaded? }
		next_page
	end

	def search_field
		@browser.text_field(:name => 'q')
		
	end

	def press_enter
		@browser.send_keys(:enter)
	end
end