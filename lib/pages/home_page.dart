import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrrcode/pages/direcciones_page.dart';
import 'package:qrrcode/pages/mapas_page.dart';
import 'package:qrrcode/providers/ui_provider.dart';
import 'package:qrrcode/widgets/custom_navigator.dart';
import 'package:qrrcode/widgets/scan_button.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Historial'),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.delete_forever),
            onPressed: ( ) { },

          )
        ],
      ),


      body: _HomePageBody(),
     bottomNavigationBar: CustomNavigationBar(),
     floatingActionButton: ScanButton(),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
   );
  }
}


class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;
    switch(currentIndex) {

      case 0:
        return MapasPage();

      case 1:
        return DireccionsPage();

      default:
        return MapasPage();
    }
    
  }
}