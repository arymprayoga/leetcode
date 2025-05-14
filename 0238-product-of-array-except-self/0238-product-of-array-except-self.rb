# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
    suffix = 1
    prefix = 1
    product = []

    nums.each do |n|
      product << prefix
      prefix *= n
    end

    (nums.length - 1).downto(0) do |i|
      product[i] *= suffix
      suffix *= nums[i]
    end

    return product
end