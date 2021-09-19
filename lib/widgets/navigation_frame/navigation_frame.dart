import 'package:ego_flutter/addons/data_stack.dart';
import 'package:ego_flutter/widgets/navigation_frame/navigation_command.dart';
import 'package:flutter/cupertino.dart';
import 'navigation_stream.dart';

class NavigationFrame extends StatefulWidget {
  final NavigationStream navigationStream;

  NavigationFrame({Key? key, required this.navigationStream}) : super(key: key);

  @override
  _NavigationFrameState createState() => _NavigationFrameState();
}

class _NavigationFrameState extends State<NavigationFrame> {
  final DataStack<Widget> _navigationStack = DataStack<Widget>();

  @override
  void initState() {
    super.initState();
    this.widget.navigationStream.rawStream.listen((event) {
      if (event is Widget) {
        setState(() {
          this._navigationStack.push(event);
        });
      } 
      else if (event is NavigationCommand) {
        _executeCommand(event);
      } 
      else {
        throw Exception("Navigation stream contains invalid object!");
      }
    });
  }

  void _executeCommand(NavigationCommand command) {
    if (command is GoBackCommand)
      this.goBack();
    else if (command is ClearNavigationStackCommand)
      this.clearNavigationStack();
    else
      throw UnimplementedError("Support for $command was is not supported");
  }

  void goBack() {
    setState(() {
      this._navigationStack.pop();
    });
  }

  void clearNavigationStack() {
    setState(() {
      this._navigationStack.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _navigationStack.isEmpty ? Container() : _navigationStack.peek(),
    );
  }
}
