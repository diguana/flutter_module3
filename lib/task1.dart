// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp( SvgImage());
}

class SvgImage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 1',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Task 1"),
        ),
        body: ImageWidget()),
      );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    const picturesvg = "lib/assets/gym.svg";
    const pictureurl = "https://cdn-icons-png.flaticon.com/512/939/939255.png";
    
    SvgPicture imageFromSvg = SvgPicture.asset(picturesvg, fit: BoxFit.cover);
    Image imageFromUrl = Image.network(pictureurl);

    return Container(
      constraints: BoxConstraints.expand(height: double.infinity),
      child: imageFromUrl,
    );
  }
}
