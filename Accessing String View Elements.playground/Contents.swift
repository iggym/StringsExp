/*:
 # Accessing String View Elements
 To find individual elements of a string, use the appropriate view for your task. For example, to retrieve the first word of a longer string, you can search the characters view for a space and then create a new string from a prefix of the characters view up to that point.
 */

import UIKit

let name = "Marie Curie"
let firstSpace = name.characters.index(of: " ")!
let firstName = String(name.characters.prefix(upTo: firstSpace))
print(firstName)
// Prints "Marie"

let firstSpaceUTF8 = firstSpace.samePosition(in: name.utf8)
print(Array(name.utf8.prefix(upTo: firstSpaceUTF8)))
// Prints "[77, 97, 114, 105, 101]"


