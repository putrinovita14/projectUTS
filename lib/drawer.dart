import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _drawerHeader(),
          _drawerItem(
              icon: (Icons.move_to_inbox),
              text: 'Inbox',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pushNamed(context, '/');
              }),
          Divider(height: 3, thickness: 1),
          _drawerItem(
              icon: (Icons.outbox),
              text: 'Outbox',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(1);
                Navigator.pushNamed(context, '/out');
              }),
          Divider(height: 3, thickness: 1),
          _drawerItem(
              icon: (Icons.report),
              text: 'Spam',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(2);
                Navigator.pushNamed(context, '/spam');
              }),
          Divider(height: 5, thickness: 1),
          _drawerItem(
              icon: (Icons.question_answer),
              text: 'Forums',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(3);
                Navigator.pushNamed(context, '/forums');
              }),
          Divider(height: 3, thickness: 1),
          _drawerItem(
              icon: (Icons.sms_failed),
              text: 'Promos',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(4);
                Navigator.pushNamed(context, '/promos');
              }),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage('https://i.pinimg.com/originals/d6/22/d4/d622d4acc7616f0fc4bf2310fa8b2e39.png'),
      ),
    ),
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('asset/myprofil.jpeg'), fit: BoxFit.cover),
    ),
    accountName: Text('PUTRI NOVITASARI'),
    accountEmail: Text('putrinovitasr14@gmail.com'),
  );
}

Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
