class Solution {
    [int] FindNumbers([int[]] $nums) {
        $result = 0

        foreach ($num in $nums) {
            $count = 0
            while ($num -gt 0) {
                $num = [math]::floor($num / 10)
                $count++
            } if ($count % 2 -eq 0) {
                $result++
            }
        }

        return $result
    }
}


#Leetcode does not have automated testing for powershell. Therefore, I created a test script for it using something called Pester. The test for this can be found as the same name  with "Pester Test" at the end of it.
Invoke-Pester -Script ("Arrays 101/01 What is an Array/Find all Numbers with Even Number of Digits Pester Test.ps1")