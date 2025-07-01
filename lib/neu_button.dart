import 'package:flutter/material.dart';

class NeuButton extends StatelessWidget {

  final onTap;
  bool isButtonPressed;

  NeuButton({super.key,this.onTap,required this.isButtonPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 160,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isButtonPressed ? Colors.grey.shade200 : Colors.grey.shade300
          ),
          boxShadow: isButtonPressed ? [] : [
            BoxShadow(
              color: Colors.grey.shade500,
              offset: Offset(6, 6),
              blurRadius: 15,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-6, -6),
              blurRadius: 15,
              spreadRadius: 1
            )
          ]
        ),
        child: Icon(
          Icons.android,
          size: 60,
          color: isButtonPressed? Colors.green[300] : Colors.green     ,
        ),
      ),
    );
  }
}
