# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    solved_marker = 0

	nums.each do |num|
	  if num != nums[solved_marker]
		solved_marker += 1
		nums[solved_marker] = num
	  end
	end
    
	solved_marker + 1
end