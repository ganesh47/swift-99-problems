//
// P05 Is list a palindrome
//

import Foundation

//Because a list has Equatable protocol implemented, it makes it easier to compare itself, with its inverted self!


public extension List {
    func append(_ list: List<T>) -> List<T> {
        if let listTail = list.tail {
            return self.append(list.head).append(listTail)
        } else {
            return self.append(list.head)
        }
    }

    func flatten()-> List  {
        if let tail = tail, head is LinkedList {
            return (head as! List<T>).flatten().append(tail.flatten()) as! List<T>
        } else if let tail = tail, !(head is LinkedList) {
            return (List(head)?.append(tail.flatten()))!
        } else if head is LinkedList {
            return (head as! List<Int>).flatten() as! List<T>
        } else {
            return List(head)!
        }
    }
}