import 'package:test/test.dart';

import 'package:binary__search/binarysearch.dart';

void main() {
  test('doesNotComplete', () {
    var binarySearch = BinarySearch();
    expect(binarySearch.doBinarySearchNums([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 9),
        10);
  });
}
