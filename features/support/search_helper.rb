require_relative 'lib/browser_helper'
require_relative 'lib/result_page'
require_relative 'lib/search_page'


class Page < BrowserHelper
	def search_page
		@search_page = SearchPage.new(@browser)
	end

	def result_page
		@result_page = ResultPage.new(@browser)
	end

	def close
		@browser.close
	end
end