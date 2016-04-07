def echo(s)
	s
end

def shout(s)
	s.upcase
end

def repeat(s, n = 2)
	("#{s} " * n).chop
end

def start_of_word(s, n)
	s[0,n]
end

def first_word(s)
	s.split[0]
end

def titleize(s)
	a = s.split.map{|w| w.capitalize}
	a.each.with_index do |w, index|
		if w.eql?("The") || w == "And" || w.eql?("Over")
			puts 1
			a[index] = w.downcase
			puts w
		end
	end
	a[0] = a.first.capitalize
	a.join(" ")
end