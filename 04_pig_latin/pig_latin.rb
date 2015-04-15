def translate_word(word)
	  vowel = ["a", "e", "i", "o", "u"]
	  alpha = ('a'..'z').to_a
	  consonants = alpha - vowel

	  array = word.split

	if vowel.include? word[0]
		array.map! { |x| x + "ay"}
	elsif word[0..1] == "qu"
   	array.map! { |x| x[2..-1] + "quay"}
  elsif word[0..2] == "sch"
     array.map! { |x| x[3..-1] + "schay"}
  elsif word[0..2] == "squ"
     array.map! { |x| x[3..-1] + "squay"}
  elsif (consonants.include? word[0]) && (consonants.include? word[1]) && (consonants.include? word[2])
   	array.map! {|x| x[3..-1] + x[0..2] + "ay"}
  elsif (consonants.include? word[0]) && (consonants.include? word[1])
   	array.map! {|x| x[2..-1] + x[0..1] + "ay"}
  elsif consonants.include? word[0]
   	array.map! {|x| x[1..-1] + x[0] + "ay"}
   end
end

def translate(sentence)
	words = sentence.split(" ")
  words.map{|w| translate_word(w) }.join(" ")
end

