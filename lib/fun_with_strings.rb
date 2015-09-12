# Homework perform in binomial by
# Antônio Lima
# Théo DURY

module FunWithStrings
  
  def palindrome?
    w = self.upcase.gsub(/[^A-Z]/,"")
	  w == w.reverse
  end
  
  
  def count_words
    fre = {}
	  self.split.each do |w|
		  w = w.downcase.gsub(/[^a-z]/,"")
		    if /[a-z]/ =~ w.downcase
			    if fre.keys.include? w
				    fre[w] += 1
			    else
				    fre[w] = 1	
			    end
		    end
	    end
	  fre
  end
  
  def anagram_groups
  	group = []
		anagram_map = {}
		self.split.each do |w|
			w = w.downcase.gsub(/[^a-z]/,"")			
			sorted_w = w.chars.sort.join
			if anagram_map.keys.include? sorted_w
				anagram_map[sorted_w] <<= w
			else
				anagram_map[sorted_w] = [w]
			end
 		end
		anagram_map.values
  end
  
  
end 
# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
