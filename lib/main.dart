import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            //title: Text(widget.title),
            centerTitle: true,
            expandedHeight: 150,
            flexibleSpace: Image.network(
              'https://media.graytvinc.com/images/810*455/packers+logo3.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: [
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Age')),
                  DataColumn(label: Text('Occuptation')),
                  DataColumn(label: Text('Email')),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(
                        Text('Cheo Walker'),
                      ),
                      DataCell(
                        Text('45'),
                      ),
                      DataCell(
                        Text('Sr Web Administrator'),
                      ),
                      DataCell(
                        Text('cwalker@dzwebcreations.com'),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Text('Pamela Bey'),
                      ),
                      DataCell(
                        Text('44'),
                      ),
                      DataCell(
                        Text('Sr Web Administrator'),
                      ),
                      DataCell(
                        Text('pamela@bebrilliantmedia.com'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 500,
            ),
          )
        ],
      ),
    );
  }
}
