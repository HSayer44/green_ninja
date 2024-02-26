import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:green_ninja/constants/globals.dart';
import 'package:green_ninja/sprite_sheets/blue_ninja_sprite_sheet.dart';
import 'package:green_ninja/sprite_sheets/dark_ninja_sprite_sheet.dart';
import 'package:green_ninja/sprite_sheets/green_ninja_sprite_sheet.dart';
import 'package:green_ninja/sprite_sheets/old_man_sprite_sheet.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GreenNinjaSpriteSheet.load();
  await BlueNinjaSpriteSheet.load();
  await OldManSpriteSheet.load();
  await DarkNinjaSpriteSheet.load();

  await FlameAudio.audioCache.loadAll([
    Globals.gameOverSound,
    Globals.powerUpSound,
    Globals.successSound,
    Globals.explosionSound,
    Globals.fireSound,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
