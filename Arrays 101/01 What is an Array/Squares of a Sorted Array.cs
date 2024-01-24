public class Solution {
    public int[] SortedSquares(int[] nums) {
        int array_index = 0;

        foreach (int num in nums) {
            nums[array_index] = num * num;
            array_index++;
        }
        Array.Sort(nums);
        return nums;
    }
}