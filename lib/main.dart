import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrrcode/pages/home_page.dart';
import 'package:qrrcode/pages/mapa_page.dart';
import 'package:qrrcode/providers/ui_provider.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (_) => new UiProvider()),
      ],

      child: MaterialApp(  
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
        initialRoute: 'home',
        routes: {
          'home' : ( _ ) => HomePage(),
          'mapa' : ( _ ) => MapaPage(),
        },
        theme: ThemeData(
          primaryColor: Colors.green.shade400,
          floatingActionButtonTheme:  FloatingActionButtonThemeData(
            backgroundColor: Colors.green.shade400,
          )
        ),
      ),
    );
  }
}