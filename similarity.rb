class Similarity
	def self.compare first_string, second_string
		first_string = Similarity.sanitize first_string
		second_string = Similarity.sanitize second_string
		words = first_string.split(' ')
		total_words = 0.0
		matches = 0.0
		words.each_with_index do |word, index|
			total_words += 1.0
			if second_string.include? word
				matches += 1.0
			end
		end
		matches / total_words * 100.0
	end

	private
		def self.sanitize str
			str = str.squeeze " "
			str = str.strip
			str = str.downcase
			str = str.gsub /,|!|-|&|\./, str
			str
		end
end