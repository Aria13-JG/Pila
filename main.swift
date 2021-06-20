class Node<T> {  
    var element: T?
    var next: Node<T>?

    init(element: T?) {
        self.element = element
    }
}

class Stack<T> {  
    var head: Node<T>?
    var size = 0

    func push(element: T?) {
        let lastNode = head
        let node = Node(element: element)
        head = node
        head?.next = lastNode
        size += 1
    }

    func pop() -> T? {
        if let obj = head?.element {
            head = head?.next
            size -= 1
            return obj
        }
        return nil
    }
}

let stack = Stack<Int>()  
stack.push(element: 1)  

print("Hola", stack.push)
