// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlogModel _$BlogModelFromJson(Map<String, dynamic> json) => BlogModel(
      title: json['title'] as String,
      body: json['body'] as String,
      image: json['image'] as String,
      author: json['author'] as String,
      avatar: json['avatar'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$BlogModelToJson(BlogModel instance) => <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'image': instance.image,
      'author': instance.author,
      'avatar': instance.avatar,
      'date': instance.date,
    };
