# @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
    (str1 + str2 == str2 + str1) ? str1[0...gcd_test(str1.size,str2.size)] : ''
end

def gcd_test(a, b)
  a = a.abs
  b = b.abs

  while b != 0
    a, b = b, a % b
  end

  a
end