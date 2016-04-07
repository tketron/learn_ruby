class Book
	@title = ""
	@lowercase_words = []

	def initialize
		@lowercase_words = ["a","an","the","and","in","of"]
	end

	def title=(title)
		split_title = title.split
		split_title.map! do |word|
			if capitalize?(word)
				word = word.capitalize 
			else
				word = word
			end
		end
		split_title[0] = split_title.first.capitalize
		@title = split_title.join(" ")
	end

	def title
		@title
	end

	def capitalize?(word)
		if @lowercase_words.include?(word)
			return false
		else
			return true
		end
	end
end