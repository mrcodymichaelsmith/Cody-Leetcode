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
