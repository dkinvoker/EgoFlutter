import 'package:ego_flutter/globals.dart';
import 'package:ego_flutter/widgets/navigation_frame/navigation_frame.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Gracz: ${Globals.playerName}"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
              onPressed: () {}, 
              style: ElevatedButton.styleFrom(
                elevation: 10.0,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.play_arrow_rounded, 
                    color: Colors.white,
                    size: 45,
                  ),
                  SizedBox(width: 2,),
                  Text(
                    "Graj",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24
                    ),
                  )
                ],
              )
            ),
          ),
          SizedBox(width: 150,),
        ],
      ),
      body: NavigationFrame(
        navigationStream: Globals.mainNagigation,
      ),
    );
  }
}