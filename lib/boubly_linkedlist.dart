class Node<T> {
  Node({required this.value, this.next});
  T? value;
  Node<T>? next;
  Node<T>? prev;

  @override
  String toString() {
    if (next == null) return "$value";
    return "$value -> ${next.toString()}";
  }
}

class DoublyLinkedList<E> {
  Node<E>? head;
  Node<E>? tail;
  int count = 0;

  bool get isEmpty => head == null;

  void insertingAtFirst(E item) {
    Node<E> newNode = Node(value: item);
    // adding node to the front of linked list
    if (count == 0) {
      head = newNode;
      tail = head;
      newNode.next = null;
      newNode.prev = null;
    } else {
      newNode.next = head;
      newNode.prev = null;
      head!.prev = newNode;
      head = newNode;
    }
    count++;
  }

  void insertAtLast(E value) {
    Node<E> newNode = Node(value: value);
    if (count == 0) {
      head = newNode;
      tail = head;
      newNode.next = null;
      newNode.prev = null;
    } else {
      newNode.next = null;
      newNode.prev = tail;
      tail!.next = newNode;
      tail = newNode;
    }
    count++;
  }

  void insertAt(int index, E value) {
    Node<E> newNode = Node(value: value);

    if (index == 0) {
      insertingAtFirst(value);
    } else if (index == count) {
      insertAtLast(value);
    } else {
      Node<E> currNode = head!;

      for (var i = 1; i < index; i++) {
        currNode = currNode.next!;
        print("the current node from for loop=> ${currNode.value}");
      }
      print("the current node from for loop=> ${currNode.next!.value}");
      newNode.next = currNode.next!;

      newNode.prev = currNode;
      currNode.next!.prev = newNode;
      currNode.next = newNode;
      count++;
    }
  }
}
