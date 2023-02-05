import 'package:ego_flutter/widgets/item_tree/item_node.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemTree extends StatelessWidget {
  final ItemNode tree;
  final double imageWidth;
  final double imageHeight;
  final double lineThickness;
  final Color lineColor;

  ItemTree({Key? key, required this.tree, this.imageWidth = 100, this.imageHeight = 100, this.lineThickness = 2, this.lineColor = Colors.black}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (tree.dupa.length == 0)
      return _renderAlone();
    if (tree.dupa.length == 1)
      return _renderWithSingleChild();
    return _renderSubTree();
  }

  Widget _createImage(String asset) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1
        )
      ),
      child: Image.asset(
        asset,
        width: this.imageWidth,
        height: this.imageHeight,
      ),
    );
  }

  Widget _renderAlone() {
    return _createImage(this.tree.assetName);
  }

  Widget _renderWithSingleChild() {
    return Column(
      children: [
        _createImage(this.tree.assetName),
        _createVerticalLine(this.lineThickness, this.lineColor),
        _createImage(this.tree.dupa[0].assetName)
      ],
    );
  }

  Widget _renderSubTree() {
    return LayoutBuilder(
      builder: (con, constrains) {
        return Column(
          children: [
            _createImage(this.tree.assetName),
            _createVerticalLine(this.lineThickness, this.lineColor),
            Padding(
              padding: EdgeInsets.only(
                  left:  constrains.maxWidth / 2 / tree.dupa.length - this.lineThickness / 2,
                  right: constrains.maxWidth / 2 / tree.dupa.length - this.lineThickness / 2
                ),
                child: Divider(
                  color: this.lineColor,
                  thickness: this.lineThickness,
                  height: 2,
                )
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: this.tree.dupa.map((e) => Flexible(
                fit: FlexFit.tight,
                child: _ItemSubTree(
                  tree: e, 
                  imageWidth: this.imageWidth,
                  imageheight: this.imageHeight,
                  lineThickness: this.lineThickness,
                  lineColor: this.lineColor,
                )
              )).toList(),
            )
          ],
        );
      }
    );
  }
}

class _ItemSubTree extends StatelessWidget {
  final ItemNode tree;
  final double imageWidth;
  final double imageheight;
  final double lineThickness;
  final Color lineColor;

  const _ItemSubTree({Key? key, required this.tree, required this.imageWidth, required this.imageheight, required this.lineThickness, required this.lineColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _createVerticalLine(this.lineThickness, this.lineColor),
        ItemTree(tree: tree, imageWidth: imageWidth, imageHeight : imageheight)
      ],
    );
  }

}

Widget _createVerticalLine(double thickness, Color color) {
  return SizedBox(
    height: 15,
    child: VerticalDivider(
      color: color,
      thickness: thickness,
    ),
  );
}