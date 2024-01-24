class Solution {
    findMaxConsecutiveOnes(nums) {
        let count = 0;
        let maxCount = 0;

        for (let num of nums) {
            if (num !== 1) {
                maxCount = Math.max(maxCount, count);
                count = 0;
            } else {
                count++;
            }
        }

        return Math.max(maxCount, count);
    }
}