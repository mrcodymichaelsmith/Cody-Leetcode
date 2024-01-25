class Solution:
    def duplicateZeros(self, arr: List[int]) -> None: 
        count = 0
        while count < len(arr):
            if arr[count] == 0 :
                arr.insert(count + 1, 0)
                arr.pop()
                count += 2
            else:
                count += 1 
        return arr