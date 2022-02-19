import 'package:flutter/material.dart';


class Content {
  final String title;
  final String imageUrl;
  final String titleImageUrl;
  final String videoUrl;
  final String description;
  final Color color;


  const Content({
    required this.title,
    required this.imageUrl, 
    this.titleImageUrl = '', 
    this.videoUrl = '',
    this.description = '', 
    this.color = const Color.fromARGB(35, 32, 126, 68)
   });
}
