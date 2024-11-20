import 'package:bhagavad_gita/views/screens/detailpage.dart';
import 'package:bhagavad_gita/views/screens/favorit.dart';
import 'package:bhagavad_gita/views/screens/home_page.dart';
import 'package:bhagavad_gita/views/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/fev.dart';
import 'models/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ThemeProvider()),
    ChangeNotifierProvider(create: (_) => FavoritesProvider()),
  ],
  child: Consumer<ThemeProvider>(
      builder: (context, themeProvider, child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: themeProvider.currentTheme,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          initialRoute: '/',
          routes: {
            'Homepage': (context) => Homepage(),
            'DetailPage': (context) => DetailPage(),
            'FavoritesPage': (context) => FavoritesPage(),
            '/': (context) => SplashScreen(),
          },
        );
      }),
  ),
  );
}
