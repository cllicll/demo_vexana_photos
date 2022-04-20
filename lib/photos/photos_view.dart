import 'package:flutter/material.dart';
import './photos_view_model.dart';

class PhotosView extends PhotosViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo Vexana Photos"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          allPhotos();
        },
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: photos.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: [
                Image.network("${photos[index].thumbnailUrl}"),
                Center(
                  child: Text(
                    "${photos[index].title}",
                    style: const TextStyle(fontSize: 10),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
