import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class User extends Equatable {
  final String name;
  final String email;
  final String phone;
  final String password;

  const User({
    @required this.name,
    @required this.email,
    @required this.phone,
    @required this.password,
  });

  @override
  List<Object> get props => [name, email, phone, password];

  bool get stringify => false;
}
