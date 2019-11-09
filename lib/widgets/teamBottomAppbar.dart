import 'package:flutter/material.dart';

import '../pages/standingpage.dart';
import '../pages/rosterpage.dart';

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
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
          ),
          Expanded(
            child: IconButton(
              icon: Icon(Icons.people),
              onPressed: () {
                Navigator.pushReplacementNamed(context, TeamPage.routeName);
              },
            ),
          ),
          Expanded(
            child: IconButton(
              icon: Icon(Icons.dashboard),
              onPressed: () {
                Navigator.pushReplacementNamed(context, StandingPage.routeName);
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
