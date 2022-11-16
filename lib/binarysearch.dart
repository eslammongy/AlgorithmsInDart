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

  int binarySearch(arr, low, high, key) {
    if (high < low) return -1;

    var mid = (low + high) ~/ 2; /*low + (high - low)/2;*/
    if (key == arr[mid]) {
      return mid;
    }

    if (key > arr[mid]) {
      return binarySearch(arr, (mid + 1), high, key);
    } else {
      return binarySearch(arr, low, (mid - 1), key);
    }
  }

  int findPivot(arr, low, high) {
    // base cases
    if (high < low) return -1;
    if (high == low) return low;

    var mid = low + (high - low) ~/ 2;
    if (mid < high && arr[mid] > arr[mid + 1]) return mid;

    if (mid > low && arr[mid] < arr[mid - 1]) return (mid - 1);

    if (arr[low] >= arr[mid]) return findPivot(arr, low, mid - 1);

    return findPivot(arr, mid + 1, high);
  }

  int pivotedBinarySearch(arr, n, key) {
    var pivot = findPivot(arr, 0, n - 1);

    // If we didn't find a pivot,
    // then array is not rotated at all
    if (pivot == -1) return binarySearch(arr, 0, n - 1, key);

    // If we found a pivot, then first compare with pivot
    // and then search in two subarrays around pivot
    if (arr[pivot] == key) return pivot;

    if (arr[0] <= key) return binarySearch(arr, 0, pivot - 1, key);

    return binarySearch(arr, pivot + 1, n - 1, key);
  }
}
