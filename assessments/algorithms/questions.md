1. Implement merge sort. What's the bigO and why?
bigO is O(nlogn), because you need to go through the entire array at least once, that's n. You must also divide the array logn times which gives us O(nlogn)

2. Write a method to reverse a string. (Hint: You cannot use reverse method)

3. Write a method to see if string is a palindrome

4. Given the root node in a sorted binary search tree, how do you find the smallest element?

Call left() until returns nil. Smaller elements go to the left of parents while larger elements are placed to the right.
