import 'package:flutter/material.dart';
import 'package:flutter_theme_changer/theme.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Theme Changer with Provider',),centerTitle: true,),
      body: Column(children: [

        Consumer<ThemeProvider>(
          builder: (context, themeProvider, child) => SwitchListTile(
            activeColor: Theme.of(context).primaryColor,
            value: themeProvider.darkTheme!,
            onChanged: (value) {
              themeProvider.toggleTheme();
            },
            title: Text(
              'Change Theme',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ),

      ],),
    );
  }
}
