class Solution:
    def sortedSquares(self, nums: List[int]) -> List[int]:
        array_index = 0
        for num in nums:
            nums[array_index] = num * num
            array_index += 1
        nums = nums.sort()
        return nums
