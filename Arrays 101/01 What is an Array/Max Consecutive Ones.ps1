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
