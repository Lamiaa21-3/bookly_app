import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_task/cubits/get_book_cubit.dart';
import 'package:new_task/models/book_model.dart';
class ComponentIetm extends StatelessWidget {
   ComponentIetm({Key? key, required this.bookModel}) : super(key: key);
 final BookModel bookModel;


  @override
  Widget build(BuildContext context) {

    return Row(
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


            Text('${bookModel.kind}', style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,),

            SizedBox(height: 15,
              width: 20,),

            Text('J.K Rolling'),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('19.99',
                  style: TextStyle(fontSize: 25),),
                SizedBox(width: 30,),
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
          ],


        ),
      ],
    );
  }
}


