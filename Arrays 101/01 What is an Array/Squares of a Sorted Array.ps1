class Solution {
    [int[]] sortedSquares([int[]] $nums) {
        $array_index = 0
        foreach ($num in $nums) {
            $nums[$array_index] = $num * $num
            $array_index++
        }
        $nums = $nums | Sort-Object
        return $nums
    }
}

#Leetcode does not have automated testing for powershell. Therefore, I created a test script for it using something called Pester. The test for this can be found as the same name  with "Pester Test" at the end of it.
Invoke-Pester -Script ("Arrays 101/01 What is an Array/Squares of a Sorted Array Pester Test.ps1")