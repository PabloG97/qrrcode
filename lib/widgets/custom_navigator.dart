import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrrcode/providers/ui_provider.dart';

class CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final uiProvider = Provider.of<UiProvider>(context);
    
    return BottomNavigationBar(
      onTap: (int i) => uiProvider.selectedMenuOpt = i,
      currentIndex: uiProvider.selectedMenuOpt,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.map_outlined),
          label: 'Mapa'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.compare_arrows_sharp),
          label: 'Direcciones'
        ),
      ],
      
    );
  }
}