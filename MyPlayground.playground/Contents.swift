//: Playground - noun: a place where people can play
/*:
 why are emoji characters like 👩‍👩‍👧‍👦 treated so strangely in Swift strings?
 
 http://stackoverflow.com/questions/43618487/why-are-emoji-characters-like-treated-so-strangely-in-swift-strings
 */
import UIKit

//why are emoji characters like 👩‍👩‍👧‍👦 treated so strangely in Swift strings?


"👩‍👩‍👧‍👦".contains("👩‍👩‍👧‍👦") // true
"👩‍👩‍👧‍👦".contains("👩") // false
"👩‍👩‍👧‍👦".contains("\u{200D}") // false
"👩‍👩‍👧‍👦".contains("👧") // false
"👩‍👩‍👧‍👦".contains("👦") // true


let manual = "\u{1F469}\u{200D}\u{1F469}\u{200D}\u{1F467}\u{200D}\u{1F466}"
Array(manual.characters) // ["👩‍", "👩‍", "👧‍", "👦"]


manual.contains("👩") // false
manual.contains("👧") // false
manual.contains("👦") // true


// Answer
print("👩‍👩‍👧‍👦".characters.count)     // 4
print("👩‍👩‍👧‍👦".unicodeScalars.count) // 7
for char in "👩‍👩‍👧‍👦".characters {
    print(char)
    
    let scalars = String(char).unicodeScalars.map({ String($0.value, radix: 16) })
    print(scalars)
}

// 👩‍
// ["1f469", "200d"]
// 👩‍
// ["1f469", "200d"]
// 👧‍
// ["1f467", "200d"]
// 👦
// ["1f466"]



"👩‍👩‍👧‍👦".characters.forEach { print($0) }

