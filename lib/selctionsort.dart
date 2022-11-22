class SelectionSerot {
  int findSmallestValue(List<int> array) {
    var smallestVal = array[0];
    var smallestValIndex = 0;
    /* // 7, 5, 4, 10, 15, 11 */
    for (var i = 1; i < array.length; i++) {
      if (array[i] < smallestVal) {
        smallestVal = array[i];
        smallestValIndex = i;
      }
    }
    return smallestVal;
  }

  List doSelectionSort(List<int> array) {
    int smallest;
    var sortedArray = [];
    var arrLen = array.length - 1;

    for (var i = 0; i <= arrLen; i++) {
      smallest = findSmallestValue(array);

      sortedArray.add(smallest);
      array.remove(smallest);
    }
    return sortedArray;
  }
}
