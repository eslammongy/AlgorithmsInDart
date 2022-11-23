class SelectionSort {
  // solution number #1
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

  // solution number #1
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

  // solution number #2 adding sorting options
  List doSelectionSort2(List<int> array, String order) {
    for (var currentIndex = 0; currentIndex < array.length; currentIndex++) {
      var valueIndex = currentIndex;

      for (var i = currentIndex + 1; i < array.length; i++) {
        if (array[i] < array[valueIndex] && order == "ASCE") {
          valueIndex = i;
        } else if (array[i] > array[valueIndex] && order == "DESC") {
          valueIndex = i;
        } else {
          continue;
        }
      }

      final tempIndex = array[currentIndex];
      array[currentIndex] = array[valueIndex];
      array[valueIndex] = tempIndex;
    }
    return array;
  }

  // solution number #2 adding sorting options
  List doSelectionSort3(List<String> array, String order) {
    for (var currentIndex = 0; currentIndex < array.length; currentIndex++) {
      var valueIndex = currentIndex;

      for (var i = currentIndex + 1; i < array.length; i++) {
        if (array[i].compareTo(array[valueIndex]) < 0 && order == "ASCE") {
          valueIndex = i;
        } else if (array[i].compareTo(array[valueIndex]) > 0 &&
            order == "DESC") {
          valueIndex = i;
        } else {
          continue;
        }
      }

      final tempIndex = array[currentIndex];
      array[currentIndex] = array[valueIndex];
      array[valueIndex] = tempIndex;
    }
    return array;
  }
}
