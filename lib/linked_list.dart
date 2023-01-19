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

  /* removing a node from the front of linked list */

  E? popFromFrontOfList() {
    final value = head?.value;
    head = head?.next;

    if (isEmpty) {
      tail = null;
    }
    print("The Removed Value -> $value");
    return value;
  }

  /* removing a node from the end of linked list */
  E? removeLastNodeFromList() {
    if (head?.next == null) return popFromFrontOfList();

    var currentNode = head;
    while (currentNode?.next != tail!) {
      currentNode = currentNode?.next;
    }
    final value = tail?.value;
    tail = currentNode;
    tail?.next = null;
    print("The Removed Value -> $value");
    return value;
  }

  /* removing a node after a particlur node at linked list */
  E? removingAfterparticlurNode(Node<E> node) {
    final value = node.next?.value;
    if (node.next == tail) {
      tail = node;
    }
    node.next = node.next?.next;
    print("The Removed Value -> $value");
    return value;
  }

  @override
  String toString() {
    if (isEmpty) return "Empty Linked List";
    return head.toString();
  }
}
