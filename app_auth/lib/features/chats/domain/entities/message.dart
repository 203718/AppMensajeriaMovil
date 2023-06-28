import 'dart:io';
import 'package:flutter/material.dart';

class Message {
  final String userId;
  final String? text;
  File? imageUrl;
  File? videoUrl;
  File? audioUrl;
  final DateTime timestamp;
  final String userName;

  Message({
    required this.userId,
    this.text,
    this.imageUrl,
    this.videoUrl,
    this.audioUrl,
    required this.timestamp,
    required this.userName,
  });
}
