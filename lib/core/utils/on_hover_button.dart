import 'package:flutter/material.dart';

class OnHoverButton extends StatefulWidget {
  Widget Function(bool value) builder;
  OnHoverButton({Key? key, required this.builder}) : super(key: key);

  @override
  _OnHoverButtonState createState() => _OnHoverButtonState();
}

class _OnHoverButtonState extends State<OnHoverButton> {
  bool value = false;


  changeEnterValue(){

    if(!value){
      setState(() {
        value = true;
      });
    }

  }
  changeExitValue(){
    if(value){
      setState(() {
         value = false;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_)=> changeEnterValue(),
      onExit: (_)=> changeExitValue(),
      cursor: SystemMouseCursors.click,
      child: widget.builder(value),
    );
  }
}
