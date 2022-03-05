import 'package:flutter/material.dart';
import 'package:dog_images/pages/image_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dog Images'),
      ),
      backgroundColor: const Color(0x75082c6c),
      body: Container(
        child: Center(
          child: TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ImagePage()));
              },
              child: const Text(
                'Fetch',
                style: TextStyle(color: Colors.white),
              ),
            style: TextButton.styleFrom(
              primary: const Color(0xff082c69),
              backgroundColor: Colors.lightBlueAccent.shade700,
              minimumSize: const Size(150, 60),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              )
            ),
          ),
        ),
      ),
    );
  }
}
