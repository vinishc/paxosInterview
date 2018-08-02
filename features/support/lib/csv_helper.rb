class CSVHelper

	# Reads the given .csv file
	# @param file_name [String] the name of the file present in data_files directory
	# @return [String array] returns an array of all the search terms present in the .csv file
	def get_search_terms(file_name)
		path = File.expand_path("../../data_files/#{file_name}", __FILE__)
  		f = File.open(path)
		terms = []
		f.each_line do |line|
			line.split(',').each {|term| terms << term}
		end
		f.close
		terms
	end
end
