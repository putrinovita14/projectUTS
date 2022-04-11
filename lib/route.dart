import 'package:flutter/material.dart';
import 'package:projectuts/screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/out':
        return MaterialPageRoute(builder: (_) => Outbox());
      case '/spam':
        return MaterialPageRoute(builder: (_) => Spam());
      case '/forums':
        return MaterialPageRoute(builder: (_) => Forums());
      case '/promos':
        return MaterialPageRoute(builder: (_) => Promos());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }
}
