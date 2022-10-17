import "package:equatable/equatable.dart";

class Blog extends Equatable
{
  final String title;
  final String body;
  final String image;
  final String author;
  final String avatar;
  final String date;
  const Blog({ required this.title, required this.body, required this.image, required this.author, required this.avatar, required this.date });
  @override
  List<Object?> get props => [
    title, body, image, author, avatar, date
  ];

  String by(){
    return "- by $author";
  }
}