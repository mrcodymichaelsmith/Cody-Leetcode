class Solution {
    findNumbers(nums) {
        let result = 0;

        nums.forEach(num => {
            let count = 0;
            let tempNum = num;

            while (tempNum > 0) {
                tempNum = Math.floor(tempNum / 10);
                count++;
            } if (count % 2 === 0) {
                result++;
            }
        });

        return result;
    }
}