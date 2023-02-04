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

class StackWithLinkedList {
  Node? topNode;
  Node? removedNode;

  void pushToStack(dynamic value) {
    Node newNode = Node();
    newNode.value = value;
    newNode.next = topNode;
    topNode = newNode;
  }

  bool stackIsEmpty() {
    return topNode == null;
  }

  popFromStack() {
    if (stackIsEmpty()) {
      print(
          "Sorry, we can't deleting this element because the list is already empty");
    } else {
      print("The Removed Item-> ${topNode!.value}");
      removedNode = topNode!;
      topNode = topNode!.next;
    }
  }

  undoPop() {
    if (removedNode == null) {
      print(
          "Sorry, we can't adding a null value to the list check the element and try again");
    } else {
      pushToStack(removedNode!.value);
    }
  }

  void getStackTop() {
    if (stackIsEmpty()) {
      print(
          "Sorry, we can't deleting this element because the list is already empty");
    } else {
      print("Stack Top Item-> ${topNode!.value}");
    }
  }

  void displayStackItems() {
    var counter = 0;
    var currentNode = topNode;
    while (currentNode != null) {
      counter++;
      print("$counter-> ${currentNode.value}");
      currentNode = currentNode.next;
    }
  }
}
