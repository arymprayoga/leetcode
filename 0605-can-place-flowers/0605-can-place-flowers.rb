# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
    return true if n == 0
    i = 0
    while i < flowerbed.length
        if flowerbed[i] == 1
            i += 2
        elsif flowerbed[i] == 0
            if flowerbed[i+1] == 0 || i == flowerbed.size - 1
                n -= 1
                i += 2
            elsif flowerbed[i+1] == 1
                i += 3 
            end
        end
        return true if n == 0
    end
    return false
end