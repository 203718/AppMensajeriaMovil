import 'dart:io';
import 'package:app_auth/features/chats/domain/entities/message.dart';

class MessageModel extends Message {
  MessageModel({
    required final String userId,
    final String? text,
    File? imageUrl,
    File? videoUrl,
    File? audioUrl,
    required final String userName,
    required final DateTime timestamp,
  }) : super(
          userId: userId,
          text: text,
          imageUrl: imageUrl,
          videoUrl: videoUrl,
          audioUrl: audioUrl,
          userName: userName,
          timestamp: timestamp,
        );

  factory MessageModel.fromJson(Map<String, dynamic> json) {
    return MessageModel(
      userId: json['userId'],
      text: json['text'],
      imageUrl: json['imageUrl'],
      videoUrl: json['videoUrl'],
      audioUrl: json['audioUrl'],
      userName: json['userName'],
      timestamp: DateTime.fromMillisecondsSinceEpoch(
          json['timestamp'] ?? DateTime.now().millisecondsSinceEpoch),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'text': text,
      'userName': userName,
      'timestamp': timestamp.millisecondsSinceEpoch,
    };
  }

  MessageModel copyWith({
    String? userId,
    String? text,
    File? imageUrl,
    File? videoUrl,
    File? audioUrl,
    String? userName,
    DateTime? timestamp,
  }) {
    return MessageModel(
      userId: userId ?? this.userId,
      text: text ?? this.text,
      imageUrl: imageUrl ?? this.imageUrl,
      videoUrl: videoUrl ?? this.videoUrl,
      audioUrl: audioUrl ?? this.audioUrl,
      userName: userName ?? this.userName,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  factory MessageModel.fromEntity(Message message) {
    return MessageModel(
      userId: message.userId,
      text: message.text,
      imageUrl: message.imageUrl,
      videoUrl: message.videoUrl,
      audioUrl: message.audioUrl,
      userName: message.userName,
      timestamp: message.timestamp,
    );
  }
}
