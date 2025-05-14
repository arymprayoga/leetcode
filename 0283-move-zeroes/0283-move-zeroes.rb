# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    len = nums.length()
    a = 0
    b = 0
    while b < len
        if nums[b] != 0
            nums[a] = nums[b]
            a+=1
        end
        b+=1
    end
    for i in a..len-1 do
        nums[i] = 0
    end
end