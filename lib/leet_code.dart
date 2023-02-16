List<int> twoSum(List<int> nums, int target) {
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
}

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

/* 
I             1
V             5
X             10
L             50
C             100
D             500
M             1000

I can be placed before V (5) and X (10) to make 4 and 9. 
X can be placed before L (50) and C (100) to make 40 and 90. 
C can be placed before D (500) and M (1000) to make 400 and 900.
 */

int romanToInt(String s) {
  var romanNums = <String, int>{
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000
  };

  int sum = 0;
  int prev = 0;

  if (RegExp(r'[IVXLCDM]').allMatches(s).length == s.length) {
    for (int i = s.length - 1; i >= 0; i--) {
      int current = romanNums[s[i]]!;
      if (current >= prev) {
        sum += current;
      } else {
        sum -= current;
      }
      prev = current;
    }
  } else {
    print('Invalid input');
  }
  return sum;
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

/* 
Input: l1 = [2,4,3], 
       l2 = [5,6,4]
Output: [7,0,8]
Explanation: 342 + 465 = 807. 
*/
ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
  ListNode result = ListNode(0);
  ListNode ptr = result;

  int carry = 0; // Set default carry

  while (l1 != null || l2 != null) {
    int sum = 0 + carry; // Initialize sum

    if (l1 != null) {
      // Use number from first list
      sum += l1.val;
      l1 = l1.next;
    }

    if (l2 != null) {
      // Use number from 2nd list
      sum += l2.val;
      l2 = l2.next;
    }

    carry = sum ~/ 10; // Get sum and carry
    sum = sum % 10;
    ptr.next = ListNode(sum);
    ptr = ptr.next!;
  }

  if (carry == 1) ptr.next = ListNode(1);

  return result.next;
}
