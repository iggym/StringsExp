//: Playground - noun: a place where people can play

import UIKit

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

print("👩‍👩‍👧‍👦".characters.count)     // 4
print("👩‍👩‍👧‍👦".unicodeScalars.count) // 7

"👩‍👩‍👧‍👦".characters.forEach { print($0) }
