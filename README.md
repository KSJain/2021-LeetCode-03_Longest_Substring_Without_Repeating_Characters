# 2021-LeetCode-03_Longest_Substring_Without_Repeating_Characters
This is a simple solution to the "Longest Substring Without Repeating Characters" problem. If you like feel free to  download and tinker with the XCode Playground file from my Github repository link https://github.com/KSJain/2021-LeetCode-03_Longest_Substring_Without_Repeating_Characters

I would be perodically keep solving as many questions  as I could, to keep everyday interesting. I miss school days.

### As of posting date the Stats are as following
**Runtime**: 40 ms, faster than 73.18% of Swift online submissions.
**Memory Usage**: 14.9 MB, less than 27.22% of Swift online submissions.
**Big-O Time Complexity**: O(n)

*Feel free to comment and/or improve. I would like to learn and  improve  alongside my peers : )* 

### Happy Coding

```
func lengthOfLongestSubstring(_ s: String) -> Int {
    guard !s.isEmpty else { return 0 }
    let characters = Array(s)
    
    var set = Set<Character>()
    var length = 1
    var left = 0, right = 0
    
    while left < characters.count && right < characters.count {
        if set.insert(characters[right]).inserted {
            right += 1
            length = max(length, right - left)
        } else {
            set.remove(characters[left])
            left += 1
        }
    }
 
//    Uncomment Below two Lines for yourself to see what was  the longest combination
//    let word = String(characters[left..<right])
//    print(word)
    
    return length
}
```

Code in a nutshell:
1. guard checks if the input string is not empty. Otherwise it sends back a 0.
2. Make a character array
3. Set for unique character recording
4. length value updates as you will see later
5. left and right pointers
6. Loop until either left or right pointer stays under number of characters in the character array
7. we get the boolean value from  - set.insert("CHARACTER AT RIGHT POINTER").inserted [First requests insert, then checks if it was  inserted or not - false is returned if value was already in there otherwise true is returned].
8. If character was unique we move to next right character and update length depending on difference between two pointers, thus counting all characters between. we use max operator because sometimes R-L could be smaller.
9. If character is not inserted = it already was present - move left pointer one space and get rid of left character.
10. When all characters are looked at [time: O(N)] return length 

**NOTE**: In production code DO NOT leave commented code unless agreed upon by team. Here I am just trying to leave extra info to learn :)

**If you like  - come to my page https://codinginferno.com/ for more fun learning. I love to learn while sharing, so feel free to ask.**
