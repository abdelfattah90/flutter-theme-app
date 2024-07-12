import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AppBarWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return AppBar(
      title: Text(title),
      actions: [
        DropdownButton<String>(
          value: themeProvider.themeName,
          onChanged: (String? newTheme) {
            if (newTheme != null) {
              themeProvider.setTheme(newTheme);
            }
          },
          items: <String>['light', 'dark', 'orange', 'purple', 'red']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
