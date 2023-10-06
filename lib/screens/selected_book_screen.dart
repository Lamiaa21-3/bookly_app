import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectedBookScreen extends StatelessWidget {
  const SelectedBookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Icon(
            Icons.shopping_cart_outlined,
            size: 32,
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, top: 7),
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
      body: Padding(
        padding: const EdgeInsets.only( top: 25),
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          //mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Center(
              child: Container(
                color: Colors.teal,
                width: 100,
                height: 120,
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Center(
              child: Text(
                'The jungle Book',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                'Ruby Killping',
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '4.8',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '(2390)',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: 45,),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        bottomLeft: Radius.circular(18)),
                  ),
                  height: 50,
                  width: 150,
                  child: Center(child: Text('19.99',
                    style: TextStyle(color: Colors.black, fontSize: 24),)),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(18),
                        bottomRight: Radius.circular(18)
                    ),
                  ),
                  child: Center(child: Text(
                    'free previou', style: TextStyle(fontSize: 24),
                  ),
                  ),
                  height: 50,
                  width: 150,

                ),
              ],
            ),
            SizedBox(height: 20,),
            Text('You can also like',style: TextStyle(fontSize: 20),),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 120,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 160,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 160,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 120,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 160,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 160,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
