using System;
using System.Collections.Generic;

public class Solution {
    public int FindNumbers(int[] nums) {
        int result = 0;

        foreach (int num in nums) {
            int count = 0;
            int tempNum = num;

            while (tempNum > 0) {
                tempNum /= 10;
                count++;
            } if (count % 2 == 0) {
                result++;
            }
        }
        return result;
    }
}