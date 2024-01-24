var sortedSquares = function(nums) {
    let array_index = 0

    for (let num of nums) {
        nums[array_index] = num * num;
        array_index++
    }
    nums = nums.sort(function(a, b){return a - b});
    return nums
};