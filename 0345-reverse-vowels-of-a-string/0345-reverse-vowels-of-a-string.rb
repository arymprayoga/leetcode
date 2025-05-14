# @param {String} s
# @return {String}
def reverse_vowels(s)
    vowels = s.scan(/[aeiouAEIOU]/) 
    s.gsub(/[aeiouAEIOU]/) { vowels.pop }
end

# vowels = {'a'=>'a', 'e'=> 'e', 'i'=> 'i', 'o'=> 'o', 'u'=> 'u'}
#     l, r = 0, s.length-1
    
#     while l < r
#         left, right = s[l], s[r]

#         if vowels.has_key?(left.downcase) && vowels.has_key?(right.downcase)
#             s[l], s[r] = s[r], s[l]
#             l += 1
#             r -= 1
#         else
    
#            l += 1 if !vowels.has_key?(left.downcase)
#            r -= 1 if !vowels.has_key?(right.downcase)
        
#         end
#     end
#     return s