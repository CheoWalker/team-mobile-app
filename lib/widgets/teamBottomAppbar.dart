import 'package:flutter/material.dart';

class TeamBottomAppbar extends StatefulWidget {
  @override
  _TeamBottomAppbarState createState() => _TeamBottomAppbarState();
}

class _TeamBottomAppbarState extends State<TeamBottomAppbar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: <Widget>[
          Expanded(
            child: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ),
          Expanded(
            child: IconButton(
              icon: Icon(Icons.people),
              onPressed: () {
                Navigator.pushNamed(context, '/roster');
              },
            ),
          ),
          Expanded(
            child: IconButton(
              icon: Icon(Icons.dashboard),
              onPressed: () {
                Navigator.pushNamed(context, '/standing');
              },
            ),
          ),
          Expanded(
            child: IconButton(
              icon: Icon(Icons.location_on),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
