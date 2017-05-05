/*:
#  The Collections in the String
 
 A string is not itself a collection. Instead, it has properties that present its contents as meaningful collections. Each of these collections is a particular type of **view** of the string’s visible and data representation.
 */

import UIKit

let cafe = "Cafe\u{301} du 🌍"
print(cafe)
// Prints "Café du 🌍"

/*:
 #  Character View
 A string’s characters property is a collection of extended grapheme clusters, which approximate human-readable characters. Many individual characters, such as “é”, “김”, and “🇮🇳”, can be made up of multiple Unicode code points. These code points are combined by Unicode’s boundary algorithms into extended grapheme clusters, represented by Swift’s Character type. Each element of the characters view is represented by a Character instance.
 */
print(cafe.characters.count)
// Prints "9"
print(Array(cafe.characters))
// Prints "["C", "a", "f", "é", " ", "d", "u", " ", "🌍"]"
let fruit = "apple"
let arrayOfCharactersInFruit = Array(fruit.characters)
print(arrayOfCharactersInFruit)

/*:
 #  Unicode Scalar View
 A string’s unicodeScalars property is a collection of Unicode scalar values, the 21-bit codes that are the basic unit of Unicode. Each scalar value is represented by a UnicodeScalar instance and is equivalent to a UTF-32 code unit.
 */
print(cafe.unicodeScalars.count)
// Prints "10"
print(Array(cafe.unicodeScalars))
// Prints "["C", "a", "f", "e", "\u{0301}", " ", "d", "u", " ", "\u{0001F30D}"]"
print(cafe.unicodeScalars.map { $0.value })
// Prints "[67, 97, 102, 101, 769, 32, 100, 117, 32, 127757]"
/*:
 #  UTF-16 View
 A string’s utf16 property is a collection of UTF-16 code units, the 16-bit encoding form of the string’s Unicode scalar values. Each code unit is stored as a UInt16 instance.
 */
print(cafe.utf16.count)
// Prints "11"
print(Array(cafe.utf16))
// Prints "[67, 97, 102, 101, 769, 32, 100, 117, 32, 55356, 57101]"

/*:
 #  The Collections in the String
 
 A string is not itself a collection. Instead, it has properties that present its contents as meaningful collections. Each of these collections is a particular type of view of the string’s visible and data representation.
 */
