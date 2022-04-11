import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectuts/drawer.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final List nama = [
    "Montse Hall",
    "Albert Lives",
    "Imma Mustard",
    "Danny Pej",
    "Montse Hall",
    "Albert Lives",
    "Imma Mustard",
    "Danny Pej",
  ];
  final List title = [
    "Hello there!!",
    "Important News",
    "Weekend Meeting",
    "Material Design",
    "Hello there!!",
    "Important News",
    "Weekend Meeting",
    "Material Design",
  ];
  final List isi = [
    "Has been a long time...",
    "That is awesome!! Take a look...",
    "Can you meet this weekend?...",
    "There is the new widget libary...",
    "Has been a long time...",
    "That is awesome!! Take a look...",
    "Can you meet this weekend?...",
    "There is the new widget libary...",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Inbox',
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                _scaffoldKey.currentState!.openEndDrawer();
              },
              icon: Icon(Icons.search),
            )
          ],
          backgroundColor: Colors.greenAccent,
        ),
        drawer: DrawerWidget(),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(nama[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        Text(
                          "2h",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                      Text('' + isi[index]),
                    ]),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('' + title[index]),
                    Icon(Icons.star_border),
                  ],
                ),
              ),
            );
          },
          itemCount: nama.length,
        ),
      ),
    );
  }
}

class Outbox extends StatelessWidget {
  final List nama = [
    "Hallo",
    "Ninja Van",
    "Imma Mustard",
  ];
  final List title = [
    "Hello there!!",
    "Important News",
    "Weekend Meeting",
  ];
  final List isi = [
    "Has been a long time...",
    "That is awesome!! Take a look...",
    "Can you meet this weekend?...",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          //leading: Icon(Icons.reorder),
          centerTitle: true,
          title: Text('Outbox'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            )
          ],
          backgroundColor: Colors.greenAccent,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(nama[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        Text(
                          "2h",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                      Text('' + isi[index]),
                    ]),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('' + title[index]),
                    Icon(Icons.star_border),
                  ],
                ),
              ),
            );
          },
          itemCount: nama.length,
        ),
      ),
    );
  }
}

class Spam extends StatelessWidget {
  final List nama = [
    "A-Poin Admin",
  ];
  final List title = [
    "Semoga panjang umur, bahagia...",
  ];
  final List isi = [
    "Happy Birthday"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.reorder),
        centerTitle: true,
        title: Text('Spam'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.mood),
              title: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(nama[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text(
                        "11 Jan",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                    Text('' + isi[index]),
                  ]),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('' + title[index]),
                  Icon(Icons.star_border),
                ],
              ),
            ),
          );
        },
        itemCount: nama.length,
      ),
    );
  }
}

class Forums extends StatelessWidget {
  final List nama = [
    "English Lesson",
    "Albert Lives",
    "Imma Mustard",
    "Danny Pej",
  ];
  final List title = [
    "Hello there!!",
    "Important News",
    "Weekend Meeting",
    "Material Design",
  ];
  final List isi = [
    "Has been a long time...",
    "That is awesome!! Take a look...",
    "Can you meet this weekend?...",
    "There is the new widget libary...",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.reorder),
        centerTitle: true,
        title: Text('Forums'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.people_outline),
              title: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(nama[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text(
                        "2h",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                    Text('' + isi[index]),
                  ]),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('' + title[index]),
                  Icon(Icons.star_border),
                ],
              ),
            ),
          );
        },
        itemCount: nama.length,
      ),
    );
  }
}

class Promos extends StatelessWidget {
  final List nama = [
    "Montse Hall",
    "Albert Lives",
    "Imma Mustard",
    "Danny Pej",
  ];
  final List title = [
    "Hello there!!",
    "Important News",
    "Weekend Meeting",
    "Material Design",
  ];
  final List isi = [
    "Has been a long time...",
    "That is awesome!! Take a look...",
    "Can you meet this weekend?...",
    "There is the new widget libary...",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.reorder),
        centerTitle: true,
        title: Text('Promos'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.account_circle),
              title: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(nama[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text(
                        "2h",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                    Text('' + isi[index]),
                  ]),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('' + title[index]),
                  Icon(Icons.star_border),
                ],
              ),
            ),
          );
        },
        itemCount: nama.length,
      ),
    );
  }
}
