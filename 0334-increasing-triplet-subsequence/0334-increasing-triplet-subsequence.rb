# @param {Integer[]} nums
# @return {Boolean}
def increasing_triplet(nums)
    min = Float::INFINITY
    mid = Float::INFINITY
    nums.each do |x|
        next min = x if x <= min
        next mid = x if x <= mid
        return true
    end
    false
end