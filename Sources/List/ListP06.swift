//
// P05 Is list a palindrome
//

import Foundation

//Because a list has Equatable protocol implemented, it makes it easier to compare itself, with its inverted self!

public extension List {
    func isPalindrome() -> Bool {
        self == self.reverse()
    }
}