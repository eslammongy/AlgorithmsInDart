// ignore_for_file: unused_import

import 'package:binary__search/binarysearch.dart';
import 'package:binary__search/linked_list.dart';
import 'package:binary__search/selctionsort.dart';
import 'package:binary__search/stack.dart';

void main(List<String> arguments) {
  final list = LinkedList<String>();
  list.appendinList("Eslam");
  list.appendinList("Mongy");
  list.appendinList("Mobile");
  list.appendinList("Developer");

  var missNode = list.findNode(1);
  list.appendAfter(missNode!, "Flutter");
  missNode = list.findNode(2);
  list.removingAfterparticlurNode(missNode!);

  print(list.toString());
}
