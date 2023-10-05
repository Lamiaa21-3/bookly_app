import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'BOOKLY',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(
              Icons.search,
              size: 33,
            ),
          ),
        ],
      ),
      body: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                  SizedBox(width: 20,),
                  Container(
                    width: 160,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: 160,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: 120,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: 160,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: 160,
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.only(left: 20,bottom: 20),
            child: Text('Best Seller'),
          ),
          Expanded(
            child: ListView.separated(itemBuilder: (context, index) =>

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          width: 120,
                          height: 100,
                          color: Colors.teal,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [


                          Text('lamiaa gamal abdelhmid', style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),maxLines: 3,overflow: TextOverflow.ellipsis,),

                          SizedBox(height: 15,
                          width: 20,),

                          Text('J.K Rolling'),
                        ],


              ),
                    ],
                  ),

                 separatorBuilder: (context, index) =>
                    Container(
                      color: Colors.white,
                      width: double.infinity,
                      height: 1,
                    ),

                itemCount: 10),
          )
        ],
      ),
    );
  }
}
