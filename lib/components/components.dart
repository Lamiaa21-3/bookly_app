import 'package:flutter/material.dart';

Widget listViewIetm ()
{
  return  Row(
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
  );
}
