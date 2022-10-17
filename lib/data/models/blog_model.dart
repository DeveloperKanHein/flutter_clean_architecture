import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/blog.dart';

part 'blog_model.g.dart';

@JsonSerializable()
class BlogModel extends Equatable
{
  final String title;
  final String body;
  final String image;
  final String author;
  final String avatar;
  final String date;
  const BlogModel({ required this.title, required this.body, required this.image, required this.author, required this.avatar,  required this.date });
  factory BlogModel.fromJson(Map<String, dynamic> json) => _$BlogModelFromJson(json);
  Map<String, dynamic> toJson() => _$BlogModelToJson(this);

  Blog toEntity() => Blog(
    title: title,
    body: body,
    image: image,
    author: author,
    avatar: avatar,
    date: date
  );

  @override
  List<Object?> get props => [
    title, body, image, author, avatar, date
  ];
}