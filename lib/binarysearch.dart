class BinarySearch {
  // binary search with looping
  doBinarySearchNums(List<int> array, int target) {
    if (array.isEmpty) {
      return -1;
    }

    int left = 0;
    int right = array.length - 1;

    while (left <= right) {
      var middle = left + (right - left) ~/ 2;
      var gusse = array[middle];

      if (gusse == target) {
        return middle;
      } else if (gusse > target) {
        right = middle - 1;
      } else {
        left = middle + 1;
      }
    }
    return -1;
  }

  // binary search with looping
  doBinarySearchString(List<String> array, String target) {
    int left = 0;
    int right = array.length - 1;
    while (left <= right) {
      var middle = left + (right - left) ~/ 2;
      var gusse = array[middle].compareTo(target);

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
      List<dynamic> array, int start, int end, dynamic target) {
    if (start > end) {
      return -1;
    }
    var middle = start + ((end - start) ~/ 2);
    var gusse = array[middle];
    if (gusse == target) {
      return middle;
    } else if (middle > array.indexOf(target)) {
      end = middle - 1;
      return recurstionBinarySearch(array, start, end, target);
    } else {
      start = middle + 1;
      return recurstionBinarySearch(array, start, end, target);
    }
  }

  int mySqrt(int x) {
    if (x == 0 || x == 1) {
      return x;
    }
    var start = 0;
    var end = x ~/ 2;
    late int ans;

    while (start <= end) {
      var mid = (start + end) ~/ 2;

      if (mid * mid == x) {
        return mid;
      } else if (mid * mid < x) {
        start = mid + 1;
        ans = mid;
      } else {
        end = mid - 1;
      }
    }
    return ans;
  }
}
