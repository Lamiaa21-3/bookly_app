import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../cubits/get_book_cubit.dart';
import '../models/book_model.dart';

class SelectedBookScreen extends StatelessWidget {
  SelectedBookScreen({Key? key, required this.bookModel, required this.index})
      : super(key: key);
  final BookModel? bookModel;

  final int index;

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
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
                '${bookModel?.items?[index].volumeInfo?.imageLinks?.smallThumbnail}',width: 100,height: 50,),
            SizedBox(
              height: 35,
            ),
            Center(
              child: Text(
                '${bookModel?.items?[index].volumeInfo?.title}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                '${bookModel?.items?[index].volumeInfo?.publisher}',
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
                  '${bookModel?.items?[index].volumeInfo?.averageRating}',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '(${bookModel?.items?[index].volumeInfo?.pageCount})',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 45,
            ),
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
                  child: Center(
                      child: Text(
                    '${bookModel?.items?[index].volumeInfo?.averageRating}',
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  )),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(18),
                        bottomRight: Radius.circular(18)),
                  ),
                  child: Center(
                    child: Text(
                      'free previou',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  height: 50,
                  width: 150,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'You can also like',
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  //itemCount: 2,
                   itemCount: BlocProvider.of<BookCubit>(context)?.bookModel?.items?.length,
                  itemBuilder: (BuildContext context, int index) {
                    Image.network(
                        '${bookModel?.items?[index].volumeInfo?.imageLinks?.smallThumbnail}');
                  },
                  // children: <Widget>[
                  //   // Image.asset(
                  //   //     '${bookData.items[in]}')
                  // ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
