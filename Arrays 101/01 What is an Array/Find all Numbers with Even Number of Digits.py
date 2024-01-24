"""
This attempt was wrong because I mkae the integer a string.
I can find the same anwser by dividing by 10.

class Solution(object):
    def findNumbers(self, nums):
        even_digits = 0 
        for num in nums:
            if len(str(num)) % 2 == 0 :
                even_digits += 1 
        return even_digits 

"""

class Solution:
    def findNumbers(self, nums):
        result = 0
        for num in nums:
            count = 0
            while num > 0:
                num = num // 10
                count += 1
                
            if count % 2 == 0:
                result += 1
            
        return result