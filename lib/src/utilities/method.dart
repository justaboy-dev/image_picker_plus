import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mime/mime.dart';

void showToast(String message) async {
  try {
    await Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      backgroundColor: Colors.white70,
      textColor: Colors.black,
    );
  } catch (e) {
    debugPrint(e.toString());
  }
}



bool isImages(File file) {
  final type = lookupMimeType(file.path);
  if (type == null) return false;
  return type.startsWith('image');
}

bool isVideos(File file) {
  final type = lookupMimeType(file.path);
  if (type == null) return false;
  return type.startsWith('video');
}