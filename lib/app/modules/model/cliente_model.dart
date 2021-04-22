import 'package:cloud_firestore/cloud_firestore.dart';

class ClienteModel {

  String id;
  String name;
  String email;

  ClienteModel({this.email, this.name, this.id});

  ClienteModel.fromDocument(DocumentSnapshot document){
    id = document.id;
    name = document.data()['name'] as String;
    email = document.data()['email'] as String;
    //if(document.data().containsKey('address')){
      //address = Address.fromMap(
          //document.data['address'] as Map<String, dynamic>);
    //}
  }

  Map<String, dynamic> toMap(){
    return {
      'name': name,
      'email': email,
      //if(address != null)
        //'address': address.toMap(),
    };
  }

  //void setAddress(Address address){
    //this.address = address;
    //saveData();
  //}
}