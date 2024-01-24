class Solution {
    [int] findMaxConsecutiveOnes([int[]] $nums) {
        $count = 0
        $maxCount = 0

        foreach ($num in $nums) {
            if ($num -ne 1) {
                $maxCount = [math]::Max($maxCount, $count)
                $count = 0
            } else {
                $count++
            }
        }

        return [math]::Max($maxCount, $count)
    }
}

#Leetcode does not have automated testing for powershell. Therefore, I created a test script for it using something called Pester. The test for this can be found as the same name  with "Pester Test" at the end of it.
Invoke-Pester -Script ("Arrays 101/01 What is an Array/Max Consecutive Ones Pester Test.ps1")