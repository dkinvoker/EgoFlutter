import 'package:flutter/widgets.dart';

class MarcinNumberPicker extends StatefulWidget {
  final int minValue;
  final int maxValue;
  final int value;
  final void Function(int) onChanged;
  final double width = 30;
  final double height = 80;
  final double itemHeight = 20;

  const MarcinNumberPicker(
      {Key? key,
      required this.minValue,
      required this.maxValue,
      required this.value,
      required this.onChanged})
      : super(key: key);

  @override
  _MarcinNumberPickerState createState() => _MarcinNumberPickerState();
}

class _MarcinNumberPickerState extends State<MarcinNumberPicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: ListWheelScrollView.useDelegate(
        itemExtent: widget.itemHeight, 
        childDelegate: ListWheelChildBuilderDelegate(
          childCount: widget.maxValue - widget.minValue + 1,
          builder: _createChild
        ),
        onSelectedItemChanged: (index) => widget.onChanged(index + widget.minValue)
      )
    );
  }

  Widget _createChild(BuildContext context, int index) {
    return Center(child: Text((index + widget.minValue).toString()));
  }
}
