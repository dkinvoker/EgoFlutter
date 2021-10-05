class GameContext {
  String activePlayer;
  List<String> allPlayers = [];

  GameContext(this.activePlayer);

  List<String> get otherPlayers {
    return allPlayers.toList()..remove(activePlayer);
  }
}
