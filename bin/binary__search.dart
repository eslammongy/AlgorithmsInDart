// ignore_for_file: unused_import

import 'package:binary__search/binarysearch.dart';
import 'package:binary__search/selctionsort.dart';
import 'package:binary__search/stack.dart';

void main(List<String> arguments) {
/*   var myList = [8974, 6594, 10290, 2, 221];
  var res = SelectionSort().findLargerValue(myList);
  print(res); */

  var stack = Stack();
  stack.pushItem("Eslam Mongy");
  stack.pushItem("Samer Mongy");
  stack.pushItem("Abdelsamea Mongy");
  print("Get the latest item added to the list ${stack.getTopItem()}");
  stack.printingStack();
  var removedItem = stack.popItem();
  print('***************After pop the top item $removedItem ****************');
  stack.printingStack();
  print("Get the latest item added to the list ${stack.getTopItem()}");
  stack.undoPop(removedItem);
  print(
      '***************After Resoring the top item $removedItem ****************');
  stack.printingStack();
}

/* List<int> twoSum(List<int> nums, int target) {
  var result = <int>[];
  outer:
  for (var i = 0; i < nums.length; i++) {
    for (var j = i + 1; j < nums.length; j++) {
      if ((nums[i] + nums[j]) == target) {
        result.add(i);
        result.add(j);
        break outer;
      } else {
        continue;
      }
    }
  }
  return result;
} */

List<int> solution(List<int> a) {
  var b = <int>[];
  if (a.isEmpty) {
    return a;
  }
  for (var i = 0; i < a.length; ++i) {
    if (i == 0) {
      if (a.length == 1) {
        b.add(a[i]);
      } else {
        b.add(0 + a[i] + a[i + 1]);
      }
    } else if (i >= a.length - 1) {
      b.add(a[i - 1] + a[i] + 0);
    } else {
      b.add((a[i - 1] + a[i] + a[i + 1]));
    }
  }

  return b;
}

int solution3(List<int> inputArray) {
  var total = 0;

  for (var i = 0; i < inputArray.length - 1; i++) {
    if (total > (inputArray[i] * inputArray[i + 1])) {
      continue;
    } else {
      total = inputArray[i] * inputArray[i + 1];
    }
  }

  return total;
}

bool solution2(List<int> nums) {
  if (nums.length == 1) {
    return true;
  }

  for (var i = 0; i < nums.length; ++i) {
    if (nums[i] >= 10) {
      var strNumber = nums[i].toString().split('');
      var revesNum = strNumber.reversed.join();
      nums[i] = int.parse(revesNum);
    }

    if (nums[i] < nums[i + 1]) {
      if (i == (nums.length - 2)) {
        print(nums);
        return true;
      }
      continue;
    } else {
      return false;
    }
  }

  return false;
}
