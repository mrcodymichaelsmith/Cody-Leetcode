Describe "Solution" {
    It "should find the maximum consecutive ones" {
        # Arrange
        $solution = New-Object Solution
        # Test case 1: Basic test with consecutive ones. Solution should be 3
        $inputArray1 = @(1, 1, 0, 1, 1, 1, 0, 1, 1)
        # Test case 2: No consecutive ones. Solution should be 0.
        $inputArray2 = @(0, 0, 0, 0, 0, 0)
        # Test case 3: Consecutive ones at the beginning. Solution should be 3.
        $inputArray3 = @(1, 1, 1, 0, 0, 1, 0, 0)
        # Test case 4: Consecutive ones at the end. Solution should be 3. 
        $inputArray4 = @(0, 0, 1, 0, 1, 1, 1)

        # Act
        $result1 = $solution.findMaxConsecutiveOnes($inputArray1)
        $result2 = $solution.findMaxConsecutiveOnes($inputArray2)
        $result3 = $solution.findMaxConsecutiveOnes($inputArray3)
        $result4 = $solution.findMaxConsecutiveOnes($inputArray4)

        # Assert
        $result1 | Should -Be 3  # There are three consecutive ones in the middle array
        $result2 | Should -Be 0  # There are no consecutive ones in the second array
        $result3 | Should -Be 3  # There are three consecutive ones at the beginning of the array
        $result4 | Should -Be 3  # There are three consecutive ones at the end of the array

    }
}