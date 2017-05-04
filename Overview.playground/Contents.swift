/*:
 # Swift String 
 A string is a series of characters, such as "Swift". Strings in Swift are Unicode correct, locale insensitive, and designed to be efficient. The String type bridges with the Objective-C class NSString and offers interoperability with C functions that works with strings.
*/

import UIKit


/*:
  ## Creating Strings
 You can create new strings using string literals or string interpolations. 
 
 A string literal is a series of characters enclosed in quotes.

 */

let someStringConstant = "Hello"

//A string literal is a series of characters enclosed in quotes. like "Hello

/*:
 ## String interpolations
String interpolations are string literals that evaluate any included expressions and convert the results to string form. 
 String interpolations are an easy way to build a string from multiple pieces. 
 
 Wrap each expression in a string interpolation in parentheses, prefixed by a backslash.
 
 */
let name = "Rosa"
let personalizedGreeting = "Welcome, \(name)!"

let price = 2
let number = 3
let cookiePrice = "\(number) cookies: $\(price * number)."