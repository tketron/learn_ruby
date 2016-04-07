def translate(phrase)
	split_phrase = phrase.split
	translated_phrase = []
	split_phrase.map do |word|
		first_vowel_index = word.index(/[aeio]|(?<!q)u/)
		beginning_consonants = word[0,first_vowel_index]
		word = word.slice(first_vowel_index, word.length)
		translated_phrase.push << word + beginning_consonants + 'ay'
	end
	translated_phrase.join(" ")
end