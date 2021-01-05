import 'package:flutter/material.dart';

class ListViewItems extends StatelessWidget {
  final AssetImage icon;
  final String text;
  final Function onPressed;

  const ListViewItems(
      {@required this.icon, @required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed;
      },
      child: Container(
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Image(
                image: icon,
                color: Colors.white,
                height: 36,
                width: 36,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xffB30060),
              ),
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
