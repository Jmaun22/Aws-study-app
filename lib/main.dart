import 'package:aws_study/screens/flash_card.dart';
import 'package:aws_study/screens/quiz.dart';
import 'package:bottom_nav_layout/bottom_nav_layout.dart';
import 'package:flutter/material.dart';
import 'screens/quiztype_selection.dart';
import 'screens/welcome.dart';
import 'screens/true_false.dart';
import 'screens/darg_drop.dart';
import 'screens/flash_card.dart';
import 'screens/quiz.dart';
import 'screens/results.dart';
import 'screens/input_screen.dart';

void main() => runApp(MaterialApp(
      home: BottomNavLayout(
        // The app's destinations
        pages: [
          (_) => WelcomeScreen(),
          (navKey) => Navigator(
                key: navKey,
                initialRoute: "/",
                onGenerateRoute: (routeSettings) => MaterialPageRoute(
                  builder: (context) {
                    if (routeSettings.name == "/")
                      return QuizSelectionPage();
                    else if (routeSettings.name == "/truefalse")
                      return TrueFalse();
                    else if (routeSettings.name == "/quiz")
                      return QuizPage();
                    else if (routeSettings.name == "/flashcards")
                      return TCardPage();
                    else if (routeSettings.name == "/dragdrop")
                      return Matching();
                    else
                      return Center(child: Text("Unknown route."));
                  },
                ),
              ),
          (_) => Input(),
        ],
        bottomNavigationBar: (currentIndex, onTap) => BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => onTap(index),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.quiz), label: 'Quiz'),
            BottomNavigationBarItem(icon: Icon(Icons.score), label: 'Results'),
          ],
        ),
      ),
    ));
