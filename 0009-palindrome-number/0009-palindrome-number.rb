# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    return true if x >= 0 && x < 10
    return false if x == 0 
    num = x
    reversed = 0

    while num > 0 do

        last_digit = num % 10
        num = num / 10 
        reversed = reversed * 10 + last_digit
    end
  
        reversed == x
end