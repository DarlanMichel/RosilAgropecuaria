import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/register/infra/datasource/register_datasource.dart';
import 'package:rosilagropecuaria/app/modules/register/infra/models/register_model.dart';

part 'register_firebase_datasource_imp.g.dart';

@Injectable(singleton: false)
class RegisterFirebaseDataSourceImp implements RegisterDataSource {
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;

  RegisterFirebaseDataSourceImp(this.auth, this.firestore);

  @override
  Future<RegisterModel> registerWithEmail(
      {String? email, String? password}) async {
    var result = await auth.createUserWithEmailAndPassword(
        email: email!, password: password!);
    var user = result.user;

    return RegisterModel(email: user!.email!, id: user.uid);
  }

  @override
  Future<RegisterModel> insertUser(
      {required String email, required String id}) async {
    bool result = false;
    await firestore
        .collection('users')
        .doc(id)
        .set({
          'name': null,
          'email': email,
        })
        .then((query) => result = true)
        .catchError((error) => result = false);

    if (result) {
      return RegisterModel(email: email);
    } else {
      throw Error();
    }
  }
}
