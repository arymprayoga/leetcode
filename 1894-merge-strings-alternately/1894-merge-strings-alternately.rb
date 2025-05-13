# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
    merged_length = word1.size + word2.size
  w1_index = 0
  w2_index = 0
  result = []
  while (w1_index + w2_index) < merged_length
    if word1[w1_index]
      result << word1[w1_index]
      w1_index += 1
    end
    if word2[w2_index]
      result << word2[w2_index]
      w2_index += 1
    end
  end
  result.join('')
end