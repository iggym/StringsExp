/*:
 # Counting the Length of a String
 When you need to know the length of a string, you must first consider what you’ll use the length for. Are you measuring the number of characters that will be displayed on the screen, or are you measuring the amount of storage needed for the string in a particular encoding? A single string can have greatly differing lengths when measured by its different views.
 For example, an ASCII character like the capital letter A is represented by a single element in each of its four views. The Unicode scalar value of A is 65, which is small enough to fit in a single code unit in both UTF-16 and UTF-8.

 */
import UIKit

let capitalA = "A"
print(capitalA.characters.count)
// Prints "1"
print(capitalA.unicodeScalars.count)
// Prints "1"
print(capitalA.utf16.count)
// Prints "1"
print(capitalA.utf8.count)
// Prints "1"
/*:
 On the other hand, an emoji flag character is constructed from a pair of Unicode scalars values, like "\u{1F1F5}" and "\u{1F1F7}". Each of these scalar values, in turn, is too large to fit into a single UTF-16 or UTF-8 code unit. As a result, each view of the string "🇵🇷" reports a different length.
 */


let flag = "🇵🇷"
print(flag.characters.count)
// Prints "1"
print(flag.unicodeScalars.count)
// Prints "2"
print(flag.utf16.count)
// Prints "4"
print(flag.utf8.count)
// Prints "8"