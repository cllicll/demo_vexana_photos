import 'package:demo_vexana_photos/photos/model/photos_model.dart';
import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';
import './photos.dart';

abstract class PhotosViewModel extends State<Photos> {
  INetworkManager manager = NetworkManager(
      isEnableLogger: true,
      options: BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));
  List<PhotosModel> photos = [];
  Future<void> allPhotos() async {
    final response = await manager.send<PhotosModel, List<PhotosModel>>(
        "/photos",
        parseModel: PhotosModel(),
        method: RequestType.GET);
    photos = response.data ?? [];
    setState(() {});
  }
}
