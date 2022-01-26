import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading:const Icon(
          Icons.menu,
        ),
        title:const Text("SHAHD",style:TextStyle(
            fontWeight: FontWeight.bold,
          fontSize: 30,
        )
        ),
        actions: [
          IconButton(
              icon:const Icon(
            Icons.notifications,
          ),
              onPressed:(){print('hello');}
          )],
      ),
      body: SingleChildScrollView(
        child: Row(
          children:
          [
            Container(
              width:200.0 ,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      const Image(
                        image: NetworkImage(
                          'https://wallpaperaccess.com/full/6528378.jpg'
                        ),
                        height: 200.0,
                        width: 200.0,
                        fit:BoxFit.cover,
                      ),
                      Container(
                        width: 200.0,
                        color: Colors.black,
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0
                        ),
                        child: const Text(
                          'Omen',
                          textAlign: TextAlign.center,

                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }



}