class Solution {
    [System.Collections.Generic.List[int]] sortedSquares([System.Collections.Generic.List[int]] $nums) {
        $arrayIndex = 0

        foreach ($num in $nums) {
            $nums[$arrayIndex] = $num * $num
            $arrayIndex++
        }

        [void]$nums.Sort()
        echo $nums
    }
}

# Example Usage:
$solution = [Solution]::new()
$numbers = @(1, -2, 3, -4)
$result = $solution.sortedSquares($numbers)
