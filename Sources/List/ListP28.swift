//
// P28: Sorting a list of lists according to length of sublists
//

import Foundation


public extension List {

    class func sortListOfListByLength(list: List<List<T>>) -> List<List<T>> {
        List<List<T>>(list.sorted {
            $0.length() < $1.length()
        })!
    }

}