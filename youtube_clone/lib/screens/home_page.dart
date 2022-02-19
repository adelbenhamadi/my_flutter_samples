import 'package:flutter/material.dart';
import 'package:sample1/data/assets.dart';
import 'package:sample1/widgets/custom_appbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController _scrollController = ScrollController();
  double _scrollOffset = 0.0;

  @override
  Widget build(BuildContext context) {
    final Size screenSz = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        child:  CustomAppbar(scrollOffset: _scrollOffset),
        preferredSize: Size(screenSz.width, 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 18, 1, 58),
        child: const Icon(Icons.cast),
        onPressed: () => print('Cast'),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                child: const Text(
                  'TITLE',
                  style: TextStyle(
                      fontSize: 24, color: Color.fromARGB(228, 115, 107, 219)),
                ),
                decoration:  BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage( Assets.headerBackground),
                ))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                    child: Container(),
                    decoration:  BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Assets.mobile01)),
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),
              ],
            )
          ],
        )],
      ),
    );
  }
}
