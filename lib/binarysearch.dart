class BinarySearch {
  // binary search with looping
  doBinarySearchNums(List<int> array, int inputValue) {
    int left = 0;
    int right = array.length - 1;
    while (left <= right) {
      var middle = left + (right - left) ~/ 2;
      var gusse = array[middle];

      if (gusse == inputValue) {
        return middle;
      } else if (gusse > inputValue) {
        right = middle - 1;
      } else {
        left = middle + 1;
      }
    }
    return -1;
  }

  // binary search with looping
  doBinarySearchString(List<String> array, String inputValue) {
    int left = 0;
    int right = array.length - 1;
    while (left <= right) {
      var middle = left + (right - left) ~/ 2;
      var gusse = array[middle].compareTo(inputValue);

      if (gusse == 0) {
        return middle;
      } else if (gusse > 0) {
        right = middle - 1;
      } else {
        left = middle + 1;
      }
    }
    return -1;
  }

  // binary search with recurstion
  recurstionBinarySearch(
      List<dynamic> array, int start, int end, dynamic inputValue) {
    if (start > end) {
      return -1;
    }
    var middle = start + ((end - start) ~/ 2);
    var gusse = array[middle];
    if (gusse == inputValue) {
      return middle;
    } else if (middle > array.indexOf(inputValue)) {
      end = middle - 1;
      return recurstionBinarySearch(array, start, end, inputValue);
    } else {
      start = middle + 1;
      return recurstionBinarySearch(array, start, end, inputValue);
    }
  }
}
