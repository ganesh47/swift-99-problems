//
// P07: Flatten a nested list structure.
//

import Foundation

//Because a list has Equatable protocol implemented, it makes it easier to compare itself, with its inverted self!


public extension List {
    func append(_ items:List<T>) -> List<T> {
        self.append(items.head)
        var tailZ = items.tail
        while(tailZ != nil){
            self.append(tailZ!.head)
            tailZ = tailZ?.tail
        }
        return self
    }
    func flatten<U>() -> List<T> where T==U {
         self
    }
    func flatten<U>() -> List<U> where T == List<U> {
        let flatHead = head
        if(tail == nil){
            return flatHead
        }else{
            flatHead.append((tail?.flatten())!)
        }
        return flatHead
    }

}