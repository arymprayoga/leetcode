# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
     hash = {}

    nums.each_with_index do |num, i|
        current = target - num
        if hash.key?(current)
            return [hash[current], i]
        end
        hash[num] = i
    end
    []
end