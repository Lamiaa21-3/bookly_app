

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/src/response.dart';
import 'package:new_task/cubits/get_book_cubit.dart';
import 'package:new_task/models/book_model.dart';
import 'package:new_task/screens/selected_book_screen.dart';
import 'package:new_task/services/get_book_sevices.dart';

import '../components/components.dart';
import '../cubits/get_book_state.dart';

class HomePageScreen extends StatelessWidget {
  HomePageScreen({Key? key}) : super(key: key);

  //Book ?bookData;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<BookCubit>(context).getBookData();
    return BlocConsumer<BookCubit,BookState>(
      listener: (context,state){

      },
      builder: (context,state)
      {
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
            body:
            //bookData = BlocProvider.of<BookCubit>(context).bookModel;
            state is StateLoadingData
                ? const Center(child: CircularProgressIndicator())
                : Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),

                  child: ListView.builder(

                    scrollDirection: Axis.horizontal,
                    itemCount:2,
                    // itemCount: BlocProvider.of<BookCubit>(context)?.bookList.length,
                    itemBuilder: (BuildContext context, int index) {
                      //Image.network('{bookData?.items?[index].volumeInfo?.imageLinks?.smallThumbnail}');

                    },
                    // children: <Widget>[
                    //   // Image.asset(
                    //   //     '${bookData.items[in]}')
                    // ],
                  ),
                ),

                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 20),
                  child: Text(
                    'Best Seller',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Expanded(
                    child: ListView.separated(
                      itemCount:BlocProvider.of<BookCubit>(context).bookModel!.items!.length,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SelectedBookScreen(
                                      bookModel:
                                      BlocProvider.of<BookCubit>(context).bookModel,index: index,)),
                          );
                        },
                        child: ComponentIetm(
                          bookModel: BlocProvider.of<BookCubit>(context).bookModel,
                          index: index,
                        ),
                      ),
                      separatorBuilder: (context, index) =>
                          Container(
                            color: Colors.white,
                            width: double.infinity,
                            height: 1,
                          ),

                    )
                )
              ],
            )
        );
      },

    );


  }
}
