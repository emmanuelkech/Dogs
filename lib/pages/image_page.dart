import 'package:dog_images/service/api.dart';
import 'package:flutter/material.dart';

import '../service/api_service.dart';

class ImagePage extends StatelessWidget {
  ImagePage({Key? key}) : super(key: key);

  final Future<ApiService> _sanp = API_service().get_data();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Images'),),
      backgroundColor: const Color(0x75082c6c),
      body: Container(
        child: Center(
          child: FutureBuilder<ApiService>(
            future: _sanp,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.network(
                        snapshot.data!.message,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }
}
