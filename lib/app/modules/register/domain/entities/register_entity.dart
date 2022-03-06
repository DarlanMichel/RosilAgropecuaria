import 'package:equatable/equatable.dart';

class RegisterEntity extends Equatable {
  final String? id;
  final String email;
  const RegisterEntity({this.id,required this.email});

  @override
  List<Object?> get props => [email, id];
}
