import 'dart:io';

import 'package:ego_flutter/widgets/item_tree/item_tree.dart';

class ItemNode {

  final String assetName;
  final List<ItemNode> children;

  ItemNode(this.assetName, { this.children = const [] });
}
