class BrowserHelper

	# Sets the @browser variable and maximizes the browser window
	# @param [Object] the browser instance
	def initialize(browser)
		@browser = browser
		@browser.driver.manage.window.maximize
	end
end