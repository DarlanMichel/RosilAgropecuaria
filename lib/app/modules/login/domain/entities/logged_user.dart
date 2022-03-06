import 'package:equatable/equatable.dart';

class LoggedUser extends Equatable {
  final String email;
  final String? name;

  const LoggedUser({required this.email, this.name});

  @override
  List<Object?> get props => [email, name];
}
