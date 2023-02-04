class Stack {
  late int topItem;
  final List<dynamic> _listOfItems = [];

  Stack() {
    topItem = -1;
  }

  void pushItem(dynamic element) {
    if (topItem > _listOfItems.length - 1) {
      print(
          "Sorry, we can't adding this new item because the list is fullfill");
    } else {
      topItem++;
      //print("Push Method-> $topItem");
      _listOfItems.insert(topItem, element);
    }
  }

  popItem() {
    dynamic element = 1;
    if (stackIsEmpty()) {
      print(
          "Sorry, we can't deleting this element because the list is already empty");
    } else {
      element = _listOfItems[topItem];
      _listOfItems.removeAt(topItem);
      topItem--;
    }

    return element;
  }

  getTopItem() {
    if (stackIsEmpty()) {
      print(
          "Sorry, we can't deleting this element because the list is already empty");
    } else {
      final element = _listOfItems[topItem];
      return element;
    }
  }

  bool stackIsEmpty() {
    if (topItem == -1) {
      return true;
    } else {
      return false;
    }
  }

  undoPop(dynamic element) {
    if (element != null) {
      topItem++;
      _listOfItems.insert(topItem, element);
    } else {
      print(
          "Sorry, we can't adding a null value to the list check the element and try again");
    }
  }

  void printingStack() {
    if (_listOfItems.isEmpty) {
      print("The Stack Is Empty !");
      return;
    }
    for (var i = _listOfItems.length - 1; i >= 0; i--) {
      print("Element:: ${_listOfItems[i]}");
    }
  }
}
