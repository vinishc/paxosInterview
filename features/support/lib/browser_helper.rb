class BrowserHelper
	def initialize(browser)
		@browser = browser
		@browser.driver.manage.window.maximize
	end
end