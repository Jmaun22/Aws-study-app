import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:desktop_window/desktop_window.dart';
import 'screens/home.dart';
import 'screens/quiz.dart';

import 'styles/color.dart';

void main() {
  setupWindow();
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

const double windowWidth = 1024;
const double windowHeight = 800;

void setupWindow() {
  if (kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    WidgetsFlutterBinding.ensureInitialized();
    // setWindowTitle('Isolate Example');
    DesktopWindow.setWindowSize(const Size(windowWidth, windowHeight));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: lsecondaryColor,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(Icons.question_mark),
                  text: 'Questions',
                ),
              ],
            ),
            title: const Text('AWS Dev Quiz'),
          ),
          body: TabBarView(
            children: [
              Home(),
              Quizzler(),
            ],
          ),
        ),
      ),
    );
  }
}
