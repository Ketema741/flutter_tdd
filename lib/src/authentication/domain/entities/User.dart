import 'package:equatable/equatable.dart';

class User extends Equatable {
    const User({
    required this.createdAt,
    required this.name,
    required this.id,
    required this.avatar
  });


  final String  createdAt;
  final String name;
  final String id;
  final  String avatar;
  
  @override
  List<Object?> get props => [id];
}