# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
    n = nums.size
    out = [1] * n
    left = right = 1
    1.upto(n-1) { |i|
        out[i] *= left *= nums[i-1]
        out[~i] *= right *= nums[-i]
    }
    out
end