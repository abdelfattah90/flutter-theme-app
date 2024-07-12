import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './theme_provider.dart';
import './home_screen.dart';
import './user_screen.dart';
import './theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    ThemeData getTheme(String themeName) {
      switch (themeName) {
        case 'light':
          return lightTheme;
        case 'dark':
          return darkTheme;
        case 'orange':
          return orangeTheme;
        case 'purple':
          return purpleTheme;
        case 'red':
          return redTheme;
        default:
          return lightTheme;
      }
    }

    return MaterialApp(
      title: 'Theme',
      theme: getTheme(themeProvider.themeName),
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/user': (context) => const UserScreen(),
      },
    );
  }
}
