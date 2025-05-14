# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    len = nums.length()
    slow = 0
    fast = 0
    while fast < len
        if nums[fast] != 0
            nums[slow] = nums[fast]
            slow+=1
        end
        fast+=1
    end
    for i in slow..len-1 do
        nums[i] = 0
    end
end