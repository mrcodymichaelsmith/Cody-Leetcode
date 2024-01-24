Describe "Solution" {
    It "Should square every number and then sort them smallest to largest." {
        # Arrange
        $solution = New-Object Solution
        # Test case 1: From Leetcode
        $inputArray1 = @(-4, -1, 0, 3, 10)

        # Act
        $result1 = $solution.sortedSquares($inputArray1)

        # Assert
        $result1 | Should -Be @(0, 1, 9, 16, 100)  # From Leetcode
    }
}