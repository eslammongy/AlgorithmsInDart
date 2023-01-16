class Stack {
  late int topItem;
  final List _listOfItems = [];

  Stack({this.topItem = -1});

  void pushItem(dynamic element) {
    if (topItem > _listOfItems.length - 1) {
      print(
          "Sorry, we can't adding this new item because the list is fullfill");
    } else {
      topItem++;
      print(topItem);
      _listOfItems.insert(topItem, element);
    }
  }

  popItem() {
    dynamic element = 1;
    if (topItem < 0) {
      print(
          "Sorry, we can't deleting this element because the list is already empty");
    } else {
      element = _listOfItems[topItem];
      //print("Fromt Pop fun :: $element");
      if (topItem == 0) {
        _listOfItems.removeAt(topItem);
        return element;
      }
      //topItem--;
      _listOfItems.removeAt(topItem);
      topItem--;
    }

    return element;
  }

  getTopItem() {
    return _listOfItems[topItem];
  }

  undoPop(element) {
    if (element != null) {
      _listOfItems.insert(topItem, element);
    } else {
      print(
          "Sorry, we can't adding a null value to the list check the element and try again");
    }
  }

  void printingStack() {
    for (var i = _listOfItems.length - 1; i >= 0; i--) {
      print("Element:: ${_listOfItems[i]}");
    }
  }
}
