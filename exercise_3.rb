# Develop your work so far to treat 'qu' as a special case, so that those words
# end in 'quay'
# e.g. quick -> ickquay
#      quilt -> iltquay
#      qat   -> atqay

def pig_latin(word)
	if 	word.start_with?(/[aoeiu]/)
		word + "way"
	elsif
		word.start_with?("qu")
		word.split("").rotate(2).join + "ay"	
	else
		n = word.index(/[aoeiu]/)
  	word.split("")[n..-1].join + word.split("")[0...n].join + "ay"
	end
end

## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('quick'), 'ickquay')
assert_equal(pig_latin('quilt'), 'iltquay')
assert_equal(pig_latin('qat'), 'atqay')
