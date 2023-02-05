class Node<T> {
  Node();
  T? value;
  Node<T>? next;

  @override
  String toString() {
    if (next == null) return "$value";
    return "$value -> ${next.toString()}";
  }
}

class LinkedQueue {
  Node? front;
  Node? rear;
  int counter = 0;

  bool queueIsEmpty() {
    return counter == 0;
  }

  void enqueue(dynamic item) {
    Node newNode = Node();
    newNode.value = item;
    newNode.next = null;

    if (counter == 0) {
      rear = newNode;
      front = newNode;
    } else {
      rear!.next = newNode;
      rear = newNode;
    }
    counter++;
  }

  void dequeue() {
    if (queueIsEmpty()) {
      print("Queue is allready empty");
    } else if (counter == 1) {
      front = null;
      rear = front;
      counter = 0;
    } else {
      Node tempNode = front!;
      front = front!.next;
      tempNode.next = null;
      counter--;
    }
  }

  void getQueueSize() {
    print("The Size Of Queue -> $counter");
  }

  getQueueFront() {
    if (queueIsEmpty()) {
      print("Queue is empty so we can't return any data!");
      return;
    }
    return front!.value;
  }

  getQueueRear() {
    if (queueIsEmpty()) {
      print("Queue is empty so we can't return any data!");
      return;
    }
    return rear!.value;
  }

  void clearQueue() {
    front = null;
    rear = null;
    counter = 0;
  }

  void displayQueueItems() {
    if (queueIsEmpty()) {
      print("Queue is empty so we can't display any data!");
    }
    var counter = 0;
    var currentNode = front;
    while (currentNode != null) {
      counter++;
      print("$counter-> ${currentNode.value}");
      currentNode = currentNode.next;
    }
  }
}
