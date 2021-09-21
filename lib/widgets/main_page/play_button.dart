import 'package:ego_flutter/widgets/game_page/game_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (con) { 
                return GamePage(); 
              }
            )
          );
        }, 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.play_arrow_rounded,
              size: 90,
            ),
            Text(
              "Graj!",
              style: TextStyle(fontSize: 48),
            )
          ],
        )
      ),
    );
  }
}