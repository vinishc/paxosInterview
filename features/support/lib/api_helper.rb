require 'rest-client'
require 'json'

class APIHelper

	# Makes a GET API call for the given currency pair
	# @param currency_pair [String] the currency pair to be retrieved from the API call
	# return [JSON] the JSON object returned by the API
	def get_response(currency_pair)
		RestClient.get("https://api.itbit.com/v1/markets/#{currency_pair}/ticker")
	end

	# Checks if the API resonse has the correct currency pair
	# @param response [JSON] the JSON response from the API call
	# @param currecny_pair [String] the currencty pair to check in the API response
	# @return [Boolean] true if the given currency pair is present in the API response, else returns false
	def verify_response(response, currency_pair)
		json = JSON.parse(response)
		json['pair'].downcase.eql?(currency_pair.downcase)
	end

end
