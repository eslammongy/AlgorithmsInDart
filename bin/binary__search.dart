import 'package:binary__search/binarysearch.dart';

void main(List<String> arguments) {
  var binarySearch = BinarySearch();
  var arrayOfNums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  // ignore: unused_local_variable
  var arrayOfNames = ['eslam', 'nada', 'samer', 'mongy', 'hamza'];
  print(
      'The Index Of Your Value Is: ${binarySearch.doBinarySearchNums(arrayOfNums, 5)}!');
}
