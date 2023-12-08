import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
class NavProvider extends ChangeNotifier{

  var selectedTabIndex = 0;

  void selectedTab(int index){
    selectedTabIndex = index;
    notifyListeners();
  }
}