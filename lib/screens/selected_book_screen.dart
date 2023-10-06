import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectedBookScreen extends StatelessWidget {
  const SelectedBookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.shopping_cart_outlined,
            size: 32,
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 15,top: 7),
          child: IconButton(
            icon: FaIcon(
              FontAwesomeIcons.xmark,
              size: 32,
            ),
            onPressed: () {
             Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
