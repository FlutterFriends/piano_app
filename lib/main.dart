import 'package:flutter/material.dart';

void main() {
  runApp(const PianoApp());
}

class PianoApp extends StatefulWidget {
  const PianoApp({super.key});

  @override
  _PianoAppState createState() => _PianoAppState();
}

class _PianoAppState extends State<PianoApp> {
  ThemeMode _themeMode = ThemeMode.dark; // Default to dark theme

  void _toggleTheme(bool isOn) {
    setState(() {
      _themeMode = isOn ? ThemeMode.light : ThemeMode.dark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Piano App',
        debugShowCheckedModeBanner: false,
        themeMode: _themeMode,
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Piano App'),
            actions: [
              // Sun icon
              Icon(Icons.dark_mode),
              // The switch
              Switch(
                value: _themeMode == ThemeMode.light,
                onChanged: _toggleTheme,
              ),
              // Sun icon
              Icon(Icons.light_mode),
            ],
          ),
          body: const Center(
            child: Text('Hello World'),
          ),
        ));
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
