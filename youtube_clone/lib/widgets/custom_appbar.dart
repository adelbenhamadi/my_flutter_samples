import 'package:flutter/material.dart';

import '../data/assets.dart';

class CustomAppbar extends StatelessWidget {
  final double scrollOffset ;

  const CustomAppbar({Key? key,required this.scrollOffset}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
      color: Colors.orange.withOpacity((scrollOffset/300).clamp(0,1).toDouble()),
     
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  [
             IconButton(onPressed: ()=>print('menu'), icon: Icon(Icons.menu)),
             //Image(image: AssetImage(Assets.youtubeLogo),fit: BoxFit.cover ,  width: 80.0, height: 80.0,),
             IconButton(onPressed: ()=>print('search'), icon: Icon(Icons.search)),
             IconButton(onPressed: ()=>print('dictate'), icon: Icon(Icons.mic)),
             //IconButton(onPressed: ()=>print('video'), icon: Icon(Icons.video_camera_front)),
             //IconButton(onPressed: ()=>print('apps'), icon: Icon(Icons.apps_outlined)),
             //IconButton(onPressed: ()=>print('ntifications'), icon: Icon(Icons.notifications_outlined)),
             //HeaderButton(title: 'TV Shows', onTap: () => print('b1') ),
             
            ],
        ))
    );
  }
}
class HeaderButton extends StatelessWidget {
 final String title;
 final GestureTapCallback? onTap;
  const HeaderButton({Key? key, required this.title,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(title, style: const TextStyle( fontSize: 14, color: Colors.white)),
           
    );
  }
}