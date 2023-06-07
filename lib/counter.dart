import 'package:flutter/cupertino.dart';

class ThemeColor{
 final Color color;

 ThemeColor({required this.color});
}

class ThemeColorWidget extends InheritedWidget{
  final ThemeColor themeColor;
  const ThemeColorWidget({super.key, required super.child,required this.themeColor});

  static ThemeColorWidget? of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<ThemeColorWidget>();
  }

  @override
  bool updateShouldNotify(covariant ThemeColorWidget oldWidget) {
return themeColor != oldWidget.themeColor;
  }




}