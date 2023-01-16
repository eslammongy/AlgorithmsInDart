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

  @override
  String toString() {
    if (isEmpty) return "Empty Linked List";
    return head.toString();
  }
}
