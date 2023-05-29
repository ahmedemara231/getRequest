import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:untitled7_alaa/Dio/model.dart';
import 'package:untitled7_alaa/Dio/repo.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  bool isLoading = true;
  late Model categoriesModel;
  Repo repo = Repo();
  Future<void> getData()async
  {
     repo.getCategoriesData().then((value)
    {
      if(value.status == true)
        {
          log('not empty');
          categoriesModel = value;
          log('${categoriesModel.data['data']}');
          setState(() {
            isLoading = false;
          });
        }
      else
      {
        log('empty');
      }
    },);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: isLoading? const Center(child: Text('Loading...'),) :
      GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          (categoriesModel.data['banners'] as List).length,
                (index) => Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Expanded(child: Image.network('${categoriesModel.data['banners'][index]['image']}')),
                      // Container(
                      //   width: double.infinity,
                      //   color: Colors.black45,
                      //     child: Center(child: Text('${categoriesModel.data['banners'][index]['name']}',style: const TextStyle(color: Colors.white),))
                      // ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
