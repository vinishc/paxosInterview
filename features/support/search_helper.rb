require_relative 'lib/browser_helper'
require_relative 'lib/result_page'
require_relative 'lib/search_page'
require_relative 'lib/api_helper'
require_relative 'lib/csv_helper'

# Initializes all the helper/page classes
class Page < BrowserHelper
	def search_page
		@search_page = SearchPage.new(@browser)
	end

	def result_page
		@result_page = ResultPage.new(@browser)
	end

	def api
		@api = APIHelper.new
	end

	def csv_helper
		@csv_helper = CSVHelper.new
	end

	def close
		@browser.close
	end
end