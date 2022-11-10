//
// P27: Group the elements of a set into disjoint subsets
//

import Foundation


public extension List {
    class func skip(takenItems: List<T>, items: List<T>) -> List<T> where T: Equatable {
        List(items.map({ t in
                    takenItems.contains {
                        $0 == t
                    } ? nil : t
                })
                .filter({ t in t != nil }).map({ $0! }))!
    }

    class func take(count: Int, offset: Int = 0, from: List<T>) -> List<T> {
        precondition(count > 0 && count <= offset + from.length(), "Take count elements")
        return List<T>((0...count - 1).map({ it -> T in from.at(it + offset)! }))!
    }

    /*
        1. Find all the combinations of 2
        2. For each combination of 2 find combination of 3 in the remaining list
        3. add combination of 2, 3 and remaining to the result
         */
    func group3(counter: [Int]) -> List<List<List<T>>> where T: Equatable {
        precondition(counter.count == 3, "We only support groupped by 3 dis-joint-sets")
        var toBeReturned: List<List<List<T>>>? = nil
        for combination2 in combinations(group: counter[0]) {
            let remaining: List<T> = List<T>.skip(takenItems: combination2, items: self)
            for combination3 in remaining.combinations(group: counter[1]) {
                let result: List<List<T>> = List<List<T>>(combination2)!.append(combination3)
                if (toBeReturned == nil) {
                    toBeReturned = List<List<List<T>>>(result)
                } else {
                    toBeReturned = toBeReturned?.append(result)
                }
            }
        }
        return toBeReturned!

    }

}