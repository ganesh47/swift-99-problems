//
// List is either empty or it is composed of a first element (head) and tail, which is also a list
//

public class List<T:Equatable & CustomStringConvertible> {

    var head: T
    var tail: List<T>?

    init?(_ values: [T]) {
        guard let first = values.first else {
            return nil
        }
        head = first
        tail = List(Array(values.suffix(from: 1)))
    }

    convenience init?(_ values: T...) {
        self.init(Array(values))
    }

}
// Equivalence definition of list is when its head as well as the tail are the same
extension List : Equatable{
    public static func ==(lhs: List<T>, rhs: List<T>) -> Bool {
        return lhs.head == rhs.head && lhs.tail == rhs.tail
    }
}
// String description for printing
extension List : CustomStringConvertible {
    public var description: String {
        return " \(head),\(String(describing: tail)) "
    }


}
