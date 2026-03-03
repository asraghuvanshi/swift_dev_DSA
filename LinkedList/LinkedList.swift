// 1. Node class
class Node {
    var value: Int
    var next: Node?
    
    init(value: Int) {
        self.value = value
        self.next = nil
    }
}

//  LinkedList class
class LinkedList {
    var head: Node?
    
    init() {
        self.head = nil
    }
    
    // Insert at the end
    func append(_ value: Int) {
        let newNode = Node(value: value)
        
        // If list is empty, new node becomes head
        if head == nil {
            head = newNode
            return
        }
        
        // Find the last node
        var current = head
        while current?.next != nil {
            current = current?.next
        }
        
        // Add new node at the end
        current?.next = newNode
    }
    
    // Insert at the beginning
    func prepend(_ value: Int) {
        let newNode = Node(value: value)
        newNode.next = head
        head = newNode
    }
    
    // Insert at specific position (0 = first, 1 = second, etc.)
    func insert(_ value: Int, at position: Int) {
        let newNode = Node(value: value)
        
        // Insert at beginning
        if position == 0 {
            newNode.next = head
            head = newNode
            return
        }
        
        // Find position to insert
        var current = head
        var currentPos = 0
        
        while current != nil && currentPos < position - 1 {
            current = current?.next
            currentPos += 1
        }
        
        // If position is valid
        if current != nil {
            newNode.next = current?.next
            current?.next = newNode
        }
    }
    
    // Print the list
    func printList() {
        if head == nil {
            print("List is empty")
            return
        }
        
        var current = head
        var result = ""
        
        while current != nil {
            result += "\(current!.value)"
            if current?.next != nil {
                result += " → "
            }
            current = current?.next
        }
        
        print(result)
    }
}

let list = LinkedList()

// Insert elements
list.append(10)     // 10
list.append(20)     // 10 → 20
list.append(30)     // 10 → 20 → 30
list.prepend(5)     // 5 → 10 → 20 → 30
list.insert(15, at: 2)  // 5 → 10 → 15 → 20 → 30

// Print the list
list.printList()