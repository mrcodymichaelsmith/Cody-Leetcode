# Max Consecutive Ones
Given a binary array nums, return the maximum number of consecutive 1's in the array.

Example 1:
  Input: nums = [1,1,0,1,1,1]
  Output: 3
  Explanation: The first two digits or the last three digits are consecutive 1s. The maximum number of consecutive 1s is 3.

Example 2:
  Input: nums = [1,0,1,1,0,1]
  Output: 2
Constraints:
  1 <= nums.length <= 105
  nums[i] is either 0 or 1.

Hint #1
  You need to think about two things as far as any window is concerned. One is the starting point for the window. How do you detect that a new window of 1s has started? The next part is detecting the ending point for this window. How do you detect the ending point for an existing window? If you figure these two things out, you will be able to detect the windows of consecutive ones. All that remains afterward is to find the longest such window and return the size.

# Find all Numbers with even Number of Digits

Given an array nums of integers, return how many of them contain an even number of digits.

Example 1:
    Input: nums = [12,345,2,6,7896]
    Output: 2
    Explanation: 
        12 contains 2 digits (even number of digits). 
        345 contains 3 digits (odd number of digits). 
        2 contains 1 digit (odd number of digits). 
        6 contains 1 digit (odd number of digits). 
        7896 contains 4 digits (even number of digits). 
        Therefore only 12 and 7896 contain an even number of digits.

Example 2:
    Input: nums = [555,901,482,1771]
    Output: 1 
    Explanation: 
        Only 1771 contains an even number of digits.

Constraints:
    1 <= nums.length <= 500
    1 <= nums[i] <= 105

Hint #1
How to compute the number of digits of a number ?

Hint #2
Divide the number by 10 again and again to get the number of digits.

# Squares of a Sorted Array