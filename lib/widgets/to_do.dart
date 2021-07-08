import 'package:flutter/material.dart';

class TodoWidget extends StatelessWidget {
  final String text;
  final bool isDone;

  TodoWidget({this.text, @required this.isDone});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 8.0,
      ),
      child: Row(
        children: [
        GestureDetector(
          onTap: () => print("checked"),
          child: Container(
              width: 30.0,
              height: 30.0,
              margin: EdgeInsets.only(
                right: 12.0,
              ),
              decoration: BoxDecoration(
                color: isDone ? Color(0xFF7349FE) : Colors.transparent,
                borderRadius: BorderRadius.circular(6.0),
                border: isDone ? null : Border.all(
                  color: Color(0xFF86829D),
                  width: 1.5
                )
              ),
              child: Image(
                image: AssetImage('assets/images/check_icon.png'),
              ),
            )
        ),
          Flexible(
            child: Text(
              text ?? "(Unnamed Todo)",
              style: TextStyle(
                color: isDone ? Color(0xFF211551) : Color(0xFF86829D),
                fontSize: 16.0,
                fontWeight: isDone ? FontWeight.bold : FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}