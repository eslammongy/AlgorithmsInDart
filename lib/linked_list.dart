class Node<T> {
  Node({required this.value, this.next});
  T? value;
  Node<T>? next;

  @override
  String toString() {
    if (next == null) return "$value";
    return "$value -> ${next.toString()}";
  }
}

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  /* insert new values at the front of the linked list using pushing  */
  void pushInList(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  /* insert new values at the end of the linked list using appending  */

  void appendinList(E value) {
    if (isEmpty) {
      pushInList(value);
      return;
    }

    tail!.next = Node(value: value);
    tail = tail!.next;
  }

  /* insert new values after particlur node at linked list using appending  */

  Node<E>? findNode(int index) {
    var currentNode = head;
    var currentIndex = 0;

    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex += 1;
    }

    return currentNode;
  }

  Node<E>? appendAfter(Node<E> node, E value) {
    if (tail == node) {
      appendinList(value);
      return tail;
    }

    node.next = Node(value: value, next: node.next);
    return node.next;
  }

  @override
  String toString() {
    if (isEmpty) return "Empty Linked List";
    return head.toString();
  }
}
