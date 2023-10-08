import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_task/cubits/get_book_cubit.dart';
import 'package:new_task/models/book_model.dart';

class ComponentIetm extends StatelessWidget {
  ComponentIetm({Key? key, required this.bookModel, required this.index})
      : super(key: key);
  final Book? bookModel;

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.network(
              '${bookModel?.items?[index].volumeInfo?.imageLinks?.smallThumbnail}'),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${bookModel?.items?[index].volumeInfo?.title}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 15,
              width: 20,
            ),
            Text('${bookModel?.items?[index].volumeInfo?.publisher}'),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${bookModel?.items?[index].volumeInfo?.averageRating}',
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '${bookModel?.items?[index].volumeInfo?.ratingsCount}',
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
          ],
        ),
      ],
    );
  }
}
