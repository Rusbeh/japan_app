import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? event;

  const MyButton({
    super.key,
    required this.text,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: event,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 51, 179, 156),
            borderRadius: BorderRadius.circular(30)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(width: 10),
            Icon(
              (Icons.arrow_forward),
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
