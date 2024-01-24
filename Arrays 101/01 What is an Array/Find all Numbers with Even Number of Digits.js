var findNumbers = function(nums) {
    let result = 0;

    for (let num of nums) {
        let count = 0;
        let tempNum = num;

        while (tempNum > 0) {
            tempNum = Math.floor(tempNum / 10);
            count++;
        } if (count % 2 === 0) {
            result++;
        }
    };

    return result;
};