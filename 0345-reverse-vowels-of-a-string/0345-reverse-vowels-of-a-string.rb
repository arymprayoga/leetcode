# @param {String} s
# @return {String}
def reverse_vowels(s)
    vowels = s.scan(/[aeiouAEIOU]/) 
    s.gsub(/[aeiouAEIOU]/) { vowels.pop }
end