# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
    max = candies.max
    ans = []

    candies.each do |e| 
        if e + extra_candies >= max 
            ans << true 
        else 
            ans << false 
        end 
    end 
    ans 
end