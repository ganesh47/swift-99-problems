//
// P12: Decode RLE
//

import Foundation

//Because a list has Equatable protocol implemented, it makes it easier to eliminate consecutive duplicates!


public extension List {
    func decodeRLE<U>() -> List<List<U>> where U: Equatable, T: Encodeable<U> {
        var arrHead: [U] = []
        let prevElem = (head as! Encoded<U>).item
        for _ in 1...(head as! Encoded<U>).count {
            arrHead.append(prevElem)
        }
        var returnableList = List<List<U>>(List<U>(arrHead)!)!
        if tail == nil {
            return returnableList
        }
        arrHead = []
        for item in tail! {
            let encoded = item as! Encoded<U>
            for _ in 1...encoded.count {
                arrHead.append(encoded.item)
            }
            returnableList = (returnableList.append(List<U>(arrHead)!))
        }
        return returnableList
    }
}