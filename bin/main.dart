// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:binary__search/binarysearch.dart';
import 'package:binary__search/linked_list.dart';
import 'package:binary__search/selctionsort.dart';
import 'package:binary__search/stack.dart';
import 'package:binary__search/stack_linkedlist.dart';
import 'package:test/expect.dart';

void main(List<String> arguments) {
  //implementing linked list
/*   final list = LinkedList<String>();
  list.appendinList("Eslam");
  list.appendinList("Mongy");
  list.appendinList("Mobile");
  list.appendinList("Developer");
  var missNode = list.findNode(1);
  list.appendAfter(missNode!, "Flutter");
  missNode = list.findNode(2);
  list.removingAfterparticlurNode(missNode!);
  print(list.toString()); */

  //implementing stack

  final stact = StackWithLinkedList();
  stact.pushToStack("Eslam");
  stact.pushToStack("Mongy");
  stact.pushToStack("Mobile");
  stact.pushToStack("Developer");

  stact.displayStackItems();
  print("*****************************");
  stact.getStackTop();
  print("*****************************");
  print("*****************************");
  stact.popFromStack();
  stact.getStackTop();
  stact.undoPop();
  print("*****************************");

  stact.displayStackItems();
}

bool checkPair(String open, String close) {
  if (open == '(' && close == ')') {
    return true;
  } else {
    if (open == '{' && close == '}') {
      return true;
    } else if (open == '[' && close == ']') {
      return true;
    }
  }
  return false;
}

bool checkParenthesesBalanced({required String expretion}) {
  Stack openBrackets = Stack();
  for (var i = 0; i < expretion.length; i++) {
    if (expretion[i] == "(" || expretion[i] == "{" || expretion[i] == "[") {
      openBrackets.pushItem(expretion[i]);
    } else if (expretion[i] == ")" ||
        expretion[i] == "}" ||
        expretion[i] == "]") {
      if (openBrackets.stackIsEmpty()) {
        return false;
      } else if (checkPair(openBrackets.getTopItem(), expretion[i]) == false) {
        return false;
      } else {
        openBrackets.popItem();
      }
    }
  }
  return openBrackets.stackIsEmpty();
}

int checkPriority(String c) {
  if (c == '-' || c == '+') {
    return 1;
  } else if (c == '*' || c == '/') {
    return 2;
  } else if (c == '^') {
    return 3;
  } else {
    return 0;
  }
}

String convertInfixToPostfix(String experssion) {
  Stack stack = Stack();
  String output = "";

  for (var i = 0; i < experssion.length; i++) {
    if (experssion[i] == " ") continue;
    if (num.tryParse(experssion[i]) != null ||
        experssion[i].contains(RegExp(r'[A-Z]'))) {
      output += experssion[i];
    } else if (experssion[i] == "(") {
      stack.pushItem("(");
    } else if (experssion[i] == ")") {
      while (stack.getTopItem() != '(') {
        output += stack.getTopItem();
        stack.popItem();
      }
      stack.popItem();
    } else {
      while (!stack.stackIsEmpty() &&
          checkPriority(experssion[i]) <= checkPriority(stack.getTopItem())) {
        output += stack.getTopItem();
        stack.popItem();
      }

      stack.pushItem(experssion[i]);
    }
  }
  while (!stack.stackIsEmpty()) {
    output += stack.getTopItem();
    stack.popItem();
  }

  return output;
}
