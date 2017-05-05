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