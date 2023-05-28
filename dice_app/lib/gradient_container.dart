import 'package:flutter/material.dart';
import 'dart:math';
import 'styled_text.dart';

class GradientContainer extends StatefulWidget {
  final List<Color> colors;
  const GradientContainer(this.colors, {super.key});

  @override
  State<GradientContainer> createState() =>
      _GradientContainerState(this.colors);
}

const Alignment start = Alignment.topLeft;
const Alignment endAlignment = Alignment.bottomRight;
final randomizer = Random();

class _GradientContainerState extends State<GradientContainer> {
  final List<Color> colors;
  _GradientContainerState(this.colors);
  int? imageNumber;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    imageNumber = randomizer.nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: start,
          end: endAlignment,
        ),
      ),
      // color: Colors.greenAccent,
      child: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
                'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg'),
            Image.asset(
              'assets/images/$imageNumber.png',
              width: 300,
              height: 300,
              // color: Colors.blue,
              // opacity:
            ),
            TextButton(
              onPressed: () => {
                setState(() {
                  imageNumber = randomizer.nextInt(6) + 1;
                })
              },
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(top: 40),
                  elevation: 10, // like shadow
                  backgroundColor: Colors.greenAccent,
                  foregroundColor: Colors.blueAccent,
                  textStyle: const TextStyle(
                    fontSize: 25,
                  )),
              child: const Text('press here'),
            ),
          ],
        ),
      ),
    );
  }
}

// int generateRandomNumber() {
//   return Random().nextInt(6) + 1; //
// }

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
