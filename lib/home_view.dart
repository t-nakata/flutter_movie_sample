import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override

  // StatefulWidgetは必ずstateを作る
  HomeViewState createState() => new HomeViewState();

}

class HomeViewState extends State<HomeView> {
  @override

  //stateの中身
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildCameraButton(), _buildPlayerButton()
            ],
          ),
        )
    );
  }

  Widget _buildCameraButton() {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new RaisedButton(
        onPressed: _onClickCameraButton,
        child: new Text("camera"),
      ),
    );
  }

  void _onClickCameraButton() {
    Navigator.of(context).pushNamed("/camera");
  }

  Widget _buildPlayerButton() {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new RaisedButton(
        onPressed: _onClickPlayerButton,
        child: new Text("player"),
      ),
    );
  }

  void _onClickPlayerButton() {
    Navigator.of(context).pushNamed("/player");
  }
}