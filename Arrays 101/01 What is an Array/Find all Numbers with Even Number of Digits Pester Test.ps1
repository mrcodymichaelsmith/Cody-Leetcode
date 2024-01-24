Describe "Solution" {
    It "should find how many numbers have an even amount of digits in an array" {
        # Arrange
        $solution = New-Object Solution
        # Test case 1: From Leetcode, should be 2 (12 and 7896)
        $inputArray1 = @(12, 345, 2, 6, 7896)
        # Test case 2: From Leetcode, should be 1 (1771)
        $inputArray2 = @(555, 901, 482, 1771)
        # Test case 3: There should be no even amount of digits in array
        $inputArray3 = @(1, 1, 1, 1, 1, 1)
        # Test case 4: All numbers should be even in the array. Should be 5
        $inputArray4 = @(10, 10, 11, 10, 11)

        # Act
        $result1 = $solution.FindNumbers($inputArray1)
        $result2 = $solution.FindNumbers($inputArray2)
        $result3 = $solution.FindNumbers($inputArray3)
        $result4 = $solution.FindNumbers($inputArray4)

        # Assert
        $result1 | Should -Be 2  # From Leetcode, should be 2 (12 and 7896)
        $result2 | Should -Be 1  # From Leetcode, should be 1 (1771)
        $result3 | Should -Be 0  # There should be no even amount of digits in array
        $result4 | Should -Be 5  # All numbers should be even in the array. Should be 5
    }
}