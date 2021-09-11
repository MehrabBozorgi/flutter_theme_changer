import 'package:flutter/material.dart';
import 'package:flutter_theme_changer/theme.dart';
import 'package:provider/provider.dart';
import 'FirstScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeProvider.darkTheme! ? Customdark : CustomLight,
          home: SafeArea(
            child: FirstScreen(),
          ),
        ),
      ),
    );
  }
}
