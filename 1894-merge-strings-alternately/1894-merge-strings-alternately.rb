# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
    length = word1.length > word2.length ? word1.length : word2.length
    result = ''
    index = 0
    
    while length >= 1
        if word1[index]
            result += word1[index]
        end

        if word2[index]
            result += word2[index]
        end

        index += 1
        length -= 1
    end
    result
end