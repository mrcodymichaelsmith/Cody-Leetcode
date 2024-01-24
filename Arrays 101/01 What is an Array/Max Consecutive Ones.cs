public class Solution 
{
    public int FindMaxConsecutiveOnes(int[] nums) 
    {
        int count = 0;
        int maxCount = 0;

        foreach (int num in nums)
        {
            if (num != 1)
            {
                maxCount = Math.Max(maxCount, count);
                count = 0;
            }
            else
            {
                count++;
            }
        }

        return Math.Max(maxCount, count);
    }
}